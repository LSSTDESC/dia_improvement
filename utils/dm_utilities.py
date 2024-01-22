import os
import glob
import warnings
import sqlite3
import re


import numpy as np

from astropy.table import Table

from lsst.afw.math import Warper
import lsst.daf.persistence as dafPersist
import lsst.afw.geom as afwGeom
import lsst.afw.coord as afwCoord
import lsst.afw.image as afwImage
import lsst.afw.display as afwDisplay
import lsst.afw.cameraGeom as cameraGeom


# The lsst_sims code issues some ignorable warnings regarding ids used for querying the object
# databases.
#with warnings.catch_warnings():
#    warnings.simplefilter("ignore")
#    import lsst.sims.coordUtils
#    from lsst.sims.catUtils.utils import ObservationMetaDataGenerator
#    from lsst.sims.utils import getRotSkyPos
    
# from desc_dc2_dm_data import REPOS

from astropy.visualization import ZScaleInterval
zscale = ZScaleInterval()

import matplotlib.pyplot as plt
from matplotlib.path import Path
import matplotlib.patches as patches


def make_patch(vertexList, wcs=None):
    """
    Return a Path in sky coords from vertex list in pixel coords.
    
    Parameters
    ----------
    vertexList: list of coordinates
        These are the corners of the region to be plotted either in pixel coordinates or
        sky coordinates.
    wcs: lsst.afw.geom.skyWcs.skyWcs.SkyWcs [None]
        The WCS object used to convert from pixel to sky coordinates.

    Returns
    -------
    matplotlib.path.Path: The encapsulation of the vertex info that matplotlib uses to
    plot a patch.
    """
    if wcs is not None:
        skyPatchList = [wcs.pixelToSky(pos).getPosition(afwGeom.degrees)
                        for pos in vertexList]
    else:
        skyPatchList = vertexList
    verts = [(coord[0], coord[1]) for coord in skyPatchList]
    verts.append((0,0))
    codes = [Path.MOVETO,
             Path.LINETO,
             Path.LINETO,
             Path.LINETO,
             Path.CLOSEPOLY,
             ]
    return Path(verts, codes)

def plot_skymap_tract(skyMap, tract=0, title=None, ax=None, nvisits_tab=None):
    """
    Plot a tract from a skyMap.
    
    Parameters
    ----------
    skyMap: lsst.skyMap.SkyMap
        The SkyMap object containing the tract and patch information.
    tract: int [0]
        The tract id of the desired tract to plot.
    title: str [None]
        Title of the tract plot.  If None, the use `tract <id>`.
    ax: matplotlib.axes._subplots.AxesSubplot [None]
        The subplot object to contain the tract plot.  If None, then make a new one.

    Returns
    -------
    matplotlib.axes._subplots.AxesSubplot: The subplot containing the tract plot.
    """
    if title is None:
        title = 'tract {}'.format(tract)
    tractInfo = skyMap[tract]
    tractBox = afwGeom.Box2D(tractInfo.getBBox())
    tractPosList = tractBox.getCorners()
    wcs = tractInfo.getWcs()
    xNum, yNum = tractInfo.getNumPatches()

    if ax is None:
        fig = plt.figure(figsize=(12,8))
        ax = fig.add_subplot(111)

    tract_center = wcs.pixelToSky(tractBox.getCenter())\
                      .getPosition(afwGeom.degrees)
    ax.text(tract_center[0], tract_center[1], '%d' % tract, size=16,
            ha="center", va="center", color='blue')
    for x in range(xNum):
        for y in range(yNum):
            patchInfo = tractInfo.getPatchInfo([x, y])
            patchBox = afwGeom.Box2D(patchInfo.getOuterBBox())
            pixelPatchList = patchBox.getCorners()
            path = make_patch(pixelPatchList, wcs)
            patch = patches.PathPatch(path, alpha=0.1, lw=1)
            ax.add_patch(patch)
            center = wcs.pixelToSky(patchBox.getCenter())\
                        .getPosition(afwGeom.degrees)
            if nvisits_tab is not None:
                nvisits = nvisits_tab[(nvisits_tab.tract==tract)&(nvisits_tab.patch_x==x)&(nvisits_tab.patch_y==y)].nvisits
                ax.text(center[0], center[1], '%d'%nvisits, size=6,
                        ha="center", va="center")
            else:
                ax.text(center[0], center[1], '%d,%d'%(x,y), size=6,
                        ha="center", va="center")

    skyPosList = [wcs.pixelToSky(pos).getPosition(afwGeom.degrees)
                  for pos in tractPosList]
    ax.set_xlim(max(coord[0] for coord in skyPosList) + 1,
                min(coord[0] for coord in skyPosList) - 1)
    ax.set_ylim(min(coord[1] for coord in skyPosList) - 1,
                max(coord[1] for coord in skyPosList) + 1)
    ax.grid(ls=':',color='gray')
    ax.set_xlabel("RA (deg.)")
    ax.set_ylabel("Dec (deg.)")
    ax.set_title(title)
    return ax

def plot_focal_plane_fast(butler, visit, ax, color='red', opsimdb=None):
    """
    Plot the CCDs in the LSST focal plane using CCD coordinates derived from the pointing
    info using the lsst.sims code.  
    
    Notes
    -----
    This function assumes that the obs_lsstSims package was used to define the camera geometry 
    for the analysis of the simulated image data.

    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        The data butler serving up data from the desired repo.
    visit: int
        The visit or obsHistID number.
    ax: matplotlib.axes._subplots.AxesSubplot
        The matplotlib subplot object onto which to plot the focal plane.
    color: str ['red']
        Color to use for plotting the individual CCDs.
    opsimDb: str [None]
        Filename of the OpSim sqlite database.  If None, then the dithered opsim db for Run1.1p
        is used.

    Returns
    -------
    matplotlib.axes._subplots.AxesSubplot: The subplot object used for plotting.
    """
    if opsimdb is None:
        opsimdb = '/global/projecta/projectdirs/lsst/groups/SSim/DC2/minion_1016_desc_dithered_v4.db'
    conn = sqlite3.connect(opsimdb)
    obs_gen = ObservationMetaDataGenerator(database=opsimdb, driver='sqlite')

    # The dithered pointing info was added to the baseline minion_1016 db.  We query for the values
    # used for the desired visit.
    curs = conn.execute('''select descDitheredRA, descDitheredDec, descDitheredRotTelPos
                        from summary where obshistid={}'''.format(visit))
    ra, dec, rottelpos = [np.degrees(x) for x in curs][0]
    
    # An ObservationMetaData object used to pass the pointing info to the function in
    # lsst.sims.coordUtils that provides the CCD coordinates.
    obs_md = obs_gen.getObservationMetaData(obsHistID=visit, boundType='circle', boundLength=0.1)[0]
    obs_md.pointingRA = ra
    obs_md.pointingDec = dec
    obs_md.OpsimMetaData['rotTelPos'] = rottelpos

    # Convert the rotation angle of the sky relative to the telescope to the sky angle relative to
    # the camera.
    obs_md.rotSkyPos = getRotSkyPos(ra, dec, obs_md, rottelpos)
    
    # Use the butler to get the camera appropriate for this observation.  If the data were from a
    # different camera, e.g., DECam or HSC, the corresponding camera objects with the associated
    # CCD geometries would be returned.
    camera = butler.get('camera')
    
    # Grab one of the calexps via its dataref so that we can ask for its filename and thereby infer
    # the location on disk of all of the calexps for this visit.
    dataref = list(butler.subset('calexp', visit=visit))[0]
    calexp_path = os.path.dirname(os.path.dirname(dataref.get('calexp_filename')[0]))
    basename = os.path.basename(calexp_path)
    # The following code is specific to the obs_lsstSim package and how it names CCDs
    # (e.g., "R:2,2 S:1,1") and formulates the path components for writing to disk.  This
    # code would not work for a different obs_ package/camera implementation.
    
    # Re-order the CCD vertex list returned by the lsst_sims code so that a rectangle is plotted.
    corner_index = (np.array([0, 1, 3, 2]),)
    for det in camera:
        # Skip the WAVEFRONT and GUIDER CCDs
        if det.getType() != cameraGeom.SCIENCE:
            continue
        detname = det.getName()
        detnum = str(det.getId()).zfill(3)
        raft, sensor = re.match(r'R:?(\d,?\d)[_ ]S:?(\d,?\d)', detname).groups()
        raft = 'R' + raft.replace(',', '')
        #sensor = 'S{}.fits'.format(sensor.replace(',', ''))
        #sensor = 'calexp_{}-{}-{}-det{}.fits'.format(str(visit).zfill(8), raft, detnum)
        detnn = detname.replace('_', '-')
        filename = f'calexp_{basename}-{detnn}-det{detnum}.fits'
        #print(filename)
        #print(os.path.join(calexp_path, raft, filename))
        if os.path.isfile(os.path.join(calexp_path, raft, filename)):
            corners = np.array(lsst.sims.coordUtils.getCornerRaDec(detname, camera, obs_md))
            path = make_patch(corners[corner_index])
            ccd = patches.PathPatch(path, alpha=0.2, lw=1, color=color)
            ax.add_patch(ccd)
    
    return ax

def plot_focal_plane(butler, visit, ax, color='red'):
    """
    Plot the CCDs in the LSST focal plane using the coordinate information in the calexps.
    
    Notes
    -----
    By looping over the available calexps, we only plot the CCDs for which image data
    are available.
    
    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        The data butler serving up data from the desired repo.
    visit: int
        The visit or obsHistID number.
    ax: matplotlib.axes._subplots.AxesSubplot
        The matplotlib subplot object onto which to plot the focal plane.
    color: str ['red']
        Color to use for plotting the individual CCDs.
        
    Returns
    -------
    matplotlib.axes._subplots.AxesSubplot: The subplot object used for plotting.
    """
    # We use the `subset` method to obtain all of the `datarefs` (i.e., references to calexp
    # data in this case) that satisfy an "incomplete" dataId.   For visit-level calexp data,
    # a unique dataset would specify visit, raft, and sensor.  If we just give the visit, then
    # references to the available data for all of the CCDs would be returned.
    dataId = dict(visit=visit)
    datarefs = list(butler.subset('calexp', dataId=dataId))
    for i, dataref in enumerate(datarefs):
        calexp = dataref.get('calexp')
        # We're not going to do anything with it here, but we can get the PSF from the calexp
        # like this:
        # psf = calexp.getPsf()
        # and we can get the zero-point (in ADU) like this
        # zero_point = calexp.getCalib().getFluxMag0()
        ccd_box = afwGeom.Box2D(calexp.getBBox())
        wcs = calexp.getWcs()
        path = make_patch(ccd_box.getCorners(), wcs)
        ccd = patches.PathPatch(path, alpha=0.2, lw=1, color=color)
        ax.add_patch(ccd)
        center = wcs.pixelToSky(ccd_box.getCenter()).getPosition(afwGeom.degrees)
    return ax

def find_available_tract_numbers(butler, known_existing_tract=4851, known_existing_patch='0,0', known_existing_filter='i'):
    """
    This is a hack to search the coadd folder for the tracts that have data.
    Unfortunately, this information is not directly accessible from the data butler. 
    
    In order for this hack to work, one needs to provide a known existing tract, patch, filter. 
    """
 
    ref_path = butler.getUri('deepCoadd_forced_src', tract=known_existing_tract, patch=known_existing_patch, filter=known_existing_filter)

    ref_path, success, _ = ref_path.partition('/{}/{}'.format(known_existing_tract, known_existing_patch))
    tract_pattern = re.compile('(\d+)$')
    if not success:
        ref_path, success, _ = ref_path.partition('/{}_t{}_p{}'.format(known_existing_filter, known_existing_tract, known_existing_patch))
        tract_pattern = re.compile('\w_t(\d+)_p')
    if not success:
        raise ValueError('cannot regonize path format')

    coadd_path_subdirs = [d for d in os.listdir(ref_path) if os.path.isdir(os.path.join(ref_path, d)) and tract_pattern.match(d)]
    tract_numbers = [int(tract_pattern.match(d).groups()[0]) for d in coadd_path_subdirs]
    tracts = sorted(set(tract_numbers))
    
    return tracts

def get_coadd_id_for_ra_dec(skymap, ra, dec):
    """
    Return a dict suitable for use as a data ID for a DM Butler

    Parameters
    ----------
    skymap: lsst.afw.skyMap.SkyMap [optional] 
        Pass in to avoid the Butler read.  Useful if you have lots of such reads.
        The skymap is just used to get the appropriate tract, patch.
        If you want to warp to a different frame, see `wcs`.
    ra: float
        Right ascension of the center of the cutout, degrees
    dec: float
        Declination of the center of the cutout, degrees
    
    Returns
    -------
    dict  - Suitable for use as a DM Butler data ID.
    """   
    # Look up the tract, patch for the RA, Dec
    radec = afwGeom.SpherePoint(ra, dec, afwGeom.degrees)
    tract_info = skymap.findTract(radec)
    patch_info = tract_info.findPatch(radec)
    coadd_id = {'tract': tract_info.getId(), 
                'patch': "%d,%d" % patch_info.getIndex()}

    return coadd_id

def cutout_coadd_ra_dec(butler, ra, dec, filter='r', 
                        datasetType='deepCoadd', **kwargs):
    """
    Produce a cutout from coadd from the given butler at 
    the given RA, Dec in decimal degrees.
    
    Notes
    -----
    Trivial wrapper around 'cutout_coadd_spherepoint'
    
    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        Servant providing access to a data repository
    ra: float
        Right ascension of the center of the cutout, degrees
    dec: float
        Declination of the center of the cutout, degrees
    filter: string
        Filter of the image to load
        
    Returns
    -------
    MaskedImage
    """
    radec = afwGeom.SpherePoint(float(ra), float(dec), afwGeom.degrees)
    return cutout_coadd_spherepoint(butler, radec, filter=filter, 
                                    datasetType=datasetType)

def cutout_coadd_spherepoint(butler, radec, filter='r', datasetType='deepCoadd',
                                  skymap=None, cutoutSideLength=51, **kwargs):
    """
    Produce a cutout from a coadd at the given afw SpherePoint radec position.
    
    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        Servant providing access to a data repository
    radec: lsst.afw.geom.SpherePoint 
        Coordinates of the center of the cutout.
    filter: string 
        Filter of the image to load
    datasetType: string ['deepCoadd']  
        Which type of coadd to load.  Doesn't support 'calexp'
    skymap: lsst.afw.skyMap.SkyMap [optional] 
        Pass in to avoid the Butler read.  Useful if you have lots of them.
    cutoutSideLength: float [optional] 
        Side of the cutout region in pixels.
    
    Returns
    -------
    MaskedImage
    """
    cutoutSize = afwGeom.ExtentI(cutoutSideLength, cutoutSideLength)

    if skymap is None:
        skymap = butler.get("%s_skyMap" % datasetType)
    
    # Look up the tract, patch for the RA, Dec
    tractInfo = skymap.findTract(radec)
    patchInfo = tractInfo.findPatch(radec)
    xy = afwGeom.PointI(tractInfo.getWcs().skyToPixel(radec))
    bbox = afwGeom.BoxI(xy - cutoutSize//2, cutoutSize)

    coaddId = {'tract': tractInfo.getId(), 
               'patch': "%d,%d" % patchInfo.getIndex(), 
               'filter': filter}
    
    cutout_image = butler.get(datasetType+'_sub', bbox=bbox, 
                              immediate=True, dataId=coaddId)
    
    return cutout_image
    
def make_plt_cutout_image(butler, ra, dec, filter='r', vmin=None, vmax=None, 
                          label=None, show=True, saveplot=False, savefits=False,
                          datasetType='deepCoadd'):
    """
    Generate and optionally display and save a postage stamp for a given RA, Dec.
    
    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        Servant providing access to a data repository
    ra: float
        Right ascension of the center of the cutout, degrees
    dec: float
        Declination of the center of the cutout, degrees
    filter: string 
        Filter of the image to load
    Returns
    -------
    MaskedImage

    Notes
    -----
    Uses macoaddtplotlib to generate stamps.  Saves FITS file if requested.
    """

    cutout_image = cutout_coadd_ra_dec(butler, ra, dec, filter=filter, 
                                       datasetType='deepCoadd')

    if savefits:
        if isinstance(savefits, str):
            filename = savefits
        else:
            filename = 'postage-stamp.fits'
        cutout_image.writeFits(filename)
    
    radec = afwGeom.SpherePoint(ra, dec, afwGeom.degrees)
    xy = cutout_image.getWcs().skyToPixel(radec)
    
    if vmin is None or vmax is None:
        vmin, vmax = zscale.get_limits(cutout_image.image.array)

    plt.imshow(cutout_image.image.array, vmin=vmin, vmax=vmax, 
               cmap='binary_r', origin='lower')
    plt.colorbar()
    plt.scatter(xy.getX() - cutout_image.getX0(), xy.getY() - cutout_image.getY0(),
                color='none', edgecolor='red', marker='o', s=200)
    if label is not None:
        plt.title(label)
    if saveplot:
        if isinstance(saveplot, str):
            filename = saveplot
        else:
            filename = 'postage-stamp.png'
        plt.savefig(filename)
        plt.close()
    if show:
        plt.show()

    return cutout_image

def display_cutout_image(butler, ra, dec, vmin=None, vmax=None, label=None,
                      frame=None, display=None, backend='matplotlib',
                      show=True, saveplot=False, savefits=False,
                      old_matplotlib = False, filter='r',
                      datasetType='deepCoadd'):
    """
    Display a postage stamp for a given RA, Dec using LSST lsst.afw.display.
    
    Parameters
    ----------
    backend: string
        Backend can be anything that lsst.afw.display and your 
        =configuration supports: 
        e.g. matplotlib, ds9, ginga, firefly.
    
    Returns
    -------
    MaskedImage
    
    Notes
    -----
    Parameters are the same as for make_cutout_image, except for the backend.
    You definitely have the matplotlib backend.
    ds9, ginga, and firefly can be set up but are non-trivial on the scale 
    of a simple Notebook.
    """
    cutout_image = cutout_coadd_ra_dec(butler, ra, dec, filter=filter, 
                                       datasetType='deepCoadd')
    if savefits:
        if isinstance(savefits, str):
            filename = savefits
        else:
            filename = 'postage-stamp.fits'
        cutout_image.writeFits(filename)
    
    if display is None:
        display = afwDisplay.Display(frame=frame, backend=backend)

    radec = afwGeom.SpherePoint(ra, dec, afwGeom.degrees)
    xy = cutout_image.getWcs().skyToPixel(radec)
    
    display.mtv(cutout_image)
    display.scale("asinh", "zscale")
    display.dot('o', xy.getX(), xy.getY(), ctype='red')
    display.show_colorbar()
    
    return cutout_image


#region  --------------------------------- different MWV notebook functions ----
def cutout_ra_dec(butler, data_id, ra, dec, 
                   dataset_type='deepDiff_differenceExp',
                   cutout_size=75, warp_to_exposure=None, **kwargs):
    """
    Produce a cutout from dataset_type from the given butler at 
    the given ra, dec
    
    Notes
    -----
    Trivial wrapper around 'cutout_spherepoint'
    
    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        Loaded DM Butler providing access to a data repository
    data_id: Butler data ID
        E.g., {'visit': 1181556, 'detector': 45, 'filter': 'r'}
    ra: float
        Right ascension of the center of the cutout, degrees
    dec: float
        Declination of the center of the cutout, degrees
    cutout_size: int [optional] 
        Side of the cutout region in pixels.  Region will be cutout_size x cutout_size.
    warp_to_exposure: optional
        Warp coadd to system of specified 'exposure', e.g., the visit image, to warp the coadd to
        before making the cutout.  The goal is to that a cut out of a coadd image
        and a cutout of a visit image should line up.
        'warp_to_exposure' overrides setting of 'cutout_size'.
         
    Returns
    -------
    MaskedImage
    """
    cutout_extent = afwGeom.ExtentI(cutout_size, cutout_size)
    radec = afwGeom.SpherePoint(ra, dec, afwGeom.degrees)
   
    image = butler.get(dataset_type, dataId=data_id)

    xy = afwGeom.PointI(image.getWcs().skyToPixel(radec))
    bbox = afwGeom.BoxI(xy - cutout_extent//2, cutout_extent)
    
    if warp_to_exposure is not None:
        warper = Warper(warpingKernelName='lanczos4')
        cutout_image = warper.warpExposure(warp_to_exposure.getWcs(), image,
                                           destBBox=warp_to_exposure.getBBox())
    else:
        cutout_image = image.getCutout(radec, cutout_extent)
    
    return cutout_image

def make_display_cutout_image(butler, data_id, ra, dec, title=None, frame=None, 
                              display=None, backend='matplotlib', show=True, 
                              saveplot=False, savefits=False, zscale=None, 
                              dataset_type='deepCoadd', **kwargs):
    """
    Generate and optionally display and save a postage stamp for a given RA, Dec.
    
    Parameters
    ----------
    butler: lsst.daf.persistence.Butler
        Servant providing access to a data repository
    data_id:
        DM Butler Data Id
    ra: float
        Right ascension of the center of the cutout, degrees
    dec: float
        Declination of the center of the cutout, degrees
    filter: string 
        Filter of the image to load
    Returns
    -------
    MaskedImage

    Notes
    -----
    Uses lsst.afw.display with matplotlib to generate stamps.  Saves FITS file if requested.
    """
    cutout_image = cutout_ra_dec(butler, data_id, ra, dec, 
                                 dataset_type=dataset_type, **kwargs)
    
    if savefits:
        if isinstance(savefits, str):
            filename = savefits
        else:
            filename = 'postage-stamp.fits'
        cutout_image.writeFits(filename)
    
    radec = afwGeom.SpherePoint(ra, dec, afwGeom.degrees)
    xy = cutout_image.getWcs().skyToPixel(radec)
    
    if display is None:
        display = afwDisplay.Display(frame=frame, backend=backend)

    display.mtv(cutout_image)
    display.scale("linear", "zscale")
    display.dot('o', xy.getX(), xy.getY(), ctype='red')
    display.show_colorbar()

    plt.xlabel('x')
    plt.ylabel('y')
    plt.tight_layout()
    #plt.colorbar()
    if title is not None:
        plt.title(title)

    if saveplot:
        if isinstance(saveplot, str):
            filename = saveplot
        else:
            filename = 'postage-stamp.png'
        plt.savefig(filename)
        plt.close()
    if show:
        plt.show()
    
    return cutout_image

#endregion ---------------------------------------------------------------------