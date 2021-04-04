import numpy as np
import matplotlib.pyplot as plt
from numpy import linalg as LA
from lsst.daf.persistence import Butler
import lsst.geom as geom
import lsst.afw.image as afwImage
import lsst.afw.display as afwDisplay
from lsst.afw.math import Warper

import GCRCatalogs
from GCR import GCRQuery

def make_cutout(exposure, x, y, cutout_size=60):
    """Make a cutout exposure at (x, y) pixel coordinate.
       exposure:      lsst.afw.image.exposure.exposure.ExposureF
       x:             x pixel coordinate
       y:             y pixel coordinate
       cutout_size:   Width(in pixel unit) of the postage stamp , default value is 60
    """
    cutout_extent = geom.ExtentI(cutout_size, cutout_size)
    radec = geom.SpherePoint(exposure.getWcs().pixelToSky(x, y))
    cutout_image = exposure.getCutout(radec, cutout_extent)
    return cutout_image

def make_cutout_radec(exposure, radec, cutout_size=60):
    cutout_extent = geom.ExtentI(cutout_size, cutout_size)
    cutout_image = exposure.getCutout(radec, cutout_extent)
    return cutout_image

def warp_to_exposure(exposure, warp_to_exposure):
    # warp the exposure to the wcs of the warp_to_exposure
    warper = Warper(warpingKernelName='lanczos4')
    exposure_warped = warper.warpExposure(warp_to_exposure.getWcs(), exposure,
                                          destBBox=warp_to_exposure.getBBox())
    return exposure_warped

def display_cutout(exposure, x, y, title=None, frame=None, cutout_size=100):
    cutout_exp = make_cutout(exposure, x, y, cutout_size=cutout_size)
    xy = geom.PointI(x, y)
    afwDisplay.setDefaultBackend('matplotlib')
    display = afwDisplay.Display(frame=frame)
    display.mtv(cutout_exp)
    plt.title(title)
    
def show_diff_calexp_coadd(diff_exp, calexp_exp, coadd_exp, x, y, frame_begin=0,
                           diff_title='diff', calexp_title='calexp', coadd_title='coadd',
                           cutout_size=100):
    # x, y                in diff image
    radec = geom.SpherePoint(diff_exp.getWcs().pixelToSky(x, y))

    diff_cutout = make_cutout_radec(diff_exp, radec, cutout_size)
    calexp_cutout = make_cutout_radec(calexp_exp, radec, cutout_size)
    coadd_cutout = make_cutout_radec(coadd_exp, radec, cutout_size)

    calexp_warp = warp_to_exposure(calexp_cutout, diff_cutout)
    coadd_warp = warp_to_exposure(coadd_cutout, diff_cutout)
    
    display_cutout(diff_cutout, x, y, title=diff_title, frame=frame_begin, cutout_size=cutout_size)
    display_cutout(calexp_warp, x, y, title=calexp_title, frame=frame_begin+1, cutout_size=cutout_size)
    display_cutout(coadd_warp, x, y, title=coadd_title, frame=frame_begin+2, cutout_size=cutout_size)


def match_coord_to_src(match_coords, src_table, half_width=4):
    idx_list = []
    for i, coord in enumerate(match_coords):
        x = coord[0]
        y = coord[1]     
        dx = np.abs(x - src_table['base_NaiveCentroid_x']) < half_width
        dy = np.abs(y - src_table['base_NaiveCentroid_y']) < half_width 
        dx_and_dy = np.logical_and(dx, dy)
        # np.where returns a tuple, only the first element is the index array
        row_indexs = np.where(dx_and_dy)[0]
        matched_src = src_table[row_indexs].copy()
        matched_src['dia_idx'] = row_indexs
        if matched_src:
            matched_src.sort('base_PsfFlux_instFlux')
            matched_src.reverse()
            idx_list.append(matched_src[0]['dia_idx'])
    return idx_list

def get_match_status(match_coords, target_coords, half_width=4):
    """
    target_coords:        ndarray
    """
    match_status = []
    for i, coord in enumerate(match_coords):
        x = coord[0]
        y = coord[1]     
        dx = np.abs(x - target_coords[:,0]) < half_width
        dy = np.abs(y - target_coords[:,1]) < half_width 
        dx_and_dy = np.logical_and(dx, dy)
        # np.where returns a tuple, only the first element is the index array
        row_indexs = np.where(dx_and_dy)[0]
        if len(row_indexs):
            match_status.append(True)
        else:
            match_status.append(False)

    return np.array(match_status)   

def get_sky_boundary(bbox, wcs):
    begin_x, begin_y = bbox.beginX, bbox.beginY
    end_x, end_y = bbox.endX, bbox.endY
    sky_00 = geom.SpherePoint(wcs.pixelToSky(begin_x, begin_y))
    sky_01 = geom.SpherePoint(wcs.pixelToSky(begin_x, end_y))
    sky_10 = geom.SpherePoint(wcs.pixelToSky(end_x, begin_y))
    sky_11 = geom.SpherePoint(wcs.pixelToSky(end_x, end_y))
    ras = np.array([sky_00.getRa().asDegrees(), sky_01.getRa().asDegrees(),
                   sky_10.getRa().asDegrees(), sky_11.getRa().asDegrees()])
    ras.sort()
    decs = np.array([sky_00.getDec().asDegrees(), sky_01.getDec().asDegrees(),
                   sky_10.getDec().asDegrees(), sky_11.getDec().asDegrees()])
    decs.sort()
    radec_dict = {
        'begin_ra': ras[1], 'end_ra': ras[2],
        'begin_dec': decs[1], 'end_dec': decs[2]
    }
    return radec_dict

def radec2xy(ra, dec, wcs):
    """This function converts radec to xy.
       ra:        ra in degree
       dec:       dec in degree
       wcs:       wcs of an exposure
       
       Returns:
       xy coordinates
    """
    radec = geom.SpherePoint(ra * geom.degrees, dec * geom.degrees)
    xy = geom.PointI(wcs.skyToPixel(radec))
    return xy.getX(), xy.getY()

def skycoords_to_pixels(ra_arr, dec_arr, wcs):
    # ra_arr        deg
    pixel_coords = []
    for i in range(len(ra_arr)):
        ra_deg = ra_arr[i]
        dec_deg = dec_arr[i]
        x, y = radec2xy(ra_deg, dec_deg, wcs)
        pixel_coords.append([x, y])
    return pixel_coords


def get_variable_xy(bbox, wcs):
    gc = GCRCatalogs.load_catalog('dc2_truth_run2.2i_star_truth_summary')
    boundary = get_sky_boundary(bbox, wcs)
    begin_ra = boundary['begin_ra']
    end_ra = boundary['end_ra']
    begin_dec = boundary['begin_dec']
    end_dec = boundary['end_dec']
    variable_data = gc.get_quantities(['ra', 'dec', 'is_variable'],
                                      filters=[f'ra > {begin_ra}', f'ra < {end_ra}',
                                               f'dec > {begin_dec}', f'dec < {end_dec}'])
    ra_arr = variable_data['ra'][variable_data['is_variable']==1]
    dec_arr = variable_data['dec'][variable_data['is_variable']==1]
    
    variable_xy = []
    for i in range(len(ra_arr)):
        ra = ra_arr[i]
        dec = dec_arr[i]
        x, y = radec2xy(ra, dec, wcs)
        variable_xy.append([x, y])
    return variable_xy



    


