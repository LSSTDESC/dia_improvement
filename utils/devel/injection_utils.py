import numpy as np
import matplotlib.pyplot as plt
from numpy import linalg as LA
from lsst.daf.persistence import Butler
import lsst.geom as geom
import lsst.afw.image as afwImage
import lsst.afw.display as afwDisplay
from lsst.afw.math import Warper




def inject_star(exposure, photoCalib, x, y, magVar, poisson=False, seed=0):
    """This function injects a fake source onto an exposure
       exposure:    The exposure for injection
       photoCalib:  lsst.afw.image.photoCalib.PhotoCalib object
       x:           injected x pixel coordinate
       y:           injected y pixel coordinate
       magVar:      injected magnitude
       poisson:     If true, add Poisson fluctuations to the fake model
       seed:        random seed of the Poisson distribution
       
    """    
    exposure.mask.addMaskPlane("FAKE")
    bitmask = exposure.mask.getPlaneBitMask("FAKE")
    xy = geom.Point2D(x, y)
    psf = exposure.getPsf()
    starIm = psf.computeImage(xy)
    # Discussions of why chossing the calibFluxRadius = 12
    # https://community.lsst.org/t/why-are-fake-sources-corrected-to-mean-the-integrated-flux-within-calibfluxradius/4110
    calibFluxRadius = 12
    correctedFlux = psf.computeApertureFlux(calibFluxRadius, xy)
    starIm /= correctedFlux
    flux = photoCalib.magnitudeToInstFlux(magVar, xy)
    starIm *= flux
    star_shape = starIm.array.shape
    star_array = starIm.getArray()
    star_array[star_array < 1e-19] = 0.

    if poisson:
        # The array of starIm will be changed inplace, we make a copy here to calculate the variance plane.
        star_array_copy = starIm.array.copy()
        star_array_copy = np.float32(star_array_copy)
        
        for i in range(star_shape[0]):
            for j in range(star_shape[1]):
                np.random.seed(seed)
                star_array[i][j] = np.random.poisson(star_array[i][j] * 0.7) / 0.7

    fakeImage = starIm.convertF()
    imageBBox = exposure.getBBox()
    imageMI = exposure.maskedImage

    interpFakeImage = fakeImage
    interpFakeImBBox = fakeImage.getBBox()
    interpFakeImBBox.clip(imageBBox)
    imageMIView = imageMI.Factory(imageMI, interpFakeImBBox)

    if interpFakeImBBox.getArea() > 0:
        clippedFakeImage = interpFakeImage.Factory(interpFakeImage, interpFakeImBBox)
        clippedFakeImageMI = afwImage.MaskedImageF(clippedFakeImage)
        clippedFakeImageMI.mask.set(bitmask)
        if poisson:
            clippedFakeImageMI.variance.array = star_array_copy / 0.7
        imageMIView += clippedFakeImageMI

def inject_fakes_to_calexp(calexp_repo, calexp_id, magVar, coords, poisson=False):
    """This function injects fakes onto a calexp exposure at given positions.
       caelxp_repo:    An empty calexp repo which is used to save the injected exposure.
       calexp_id:      The data id of the calexp exposure
       magVar:         The injected magnitude
       coords:         A list of [x, y] pixel coordinates
       poisson:        If true, add Poisson fluctuations to the fake model
    """
    
    calexp_butler = Butler(calexp_repo)
    calexp_photoCalib = calexp_butler.get('calexp_photoCalib',  calexp_id)
    calexp_exposure = calexp_butler.get('calexp', dataId=calexp_id)
    for coord in coords:
        x, y = coord[0], coord[1]
        inject_star(calexp_exposure, calexp_photoCalib, x, y, magVar, poisson=poisson)
    calexp_butler.put(calexp_exposure, 'calexp', dataId=calexp_id)

        
def remove_flag_src(src_table):
    """This function removes sources with flags.
       src_table:      The source table(astropy table) we want to apply flag selection.
    """
    FLAG_LIST = ['base_PixelFlags_flag_offimage', 'base_PixelFlags_flag_edge', 'base_PixelFlags_flag_interpolated',
                'base_PixelFlags_flag_saturated', 'base_PixelFlags_flag_cr', 'base_PixelFlags_flag_bad',
                'base_PixelFlags_flag_suspect', 'base_PixelFlags_flag_interpolatedCenter', 'base_PixelFlags_flag_saturatedCenter',
                'base_PixelFlags_flag_crCenter', 'base_PixelFlags_flag_suspectCenter']

    row_num = []
    for num, src in enumerate(src_table):
        flag_count = 0
        for flag in FLAG_LIST:
            # Here the data type is np.bool_, not python's built-in bool
            if src[flag] is np.bool_(True):
                flag_count += 1
        if flag_count == 0:
            row_num.append(num)
    good_table = src_table[row_num]
    return good_table


def check_diaSrc_detecion(check_coords, src_table, half_width=4):
    """This function checks whether dia sources have been detected at the coordinates given
       by the check_coords.
       check_coords:      A list of [x, y] pixel coordinates
       src_table:         An astropy table of dia sources(diaSrc)
       half_width:        The half length of the search width. The total searching region is 
                          x - half_width: x + half_width, y - half_width, y + half_width
       Returns:
       detected_set:      A set of diaSrc indexes(ordered as the src_table) of the detected sources
       missed_set:        A set of diaSrc indexes(ordered as the src_table) of the missed sources
       dia_list:          A list of astropy tables. The first dimension corresponds to the indexes
                          given from the check_coords. The second dimension collects the diaSrc table
                          of the matched sources. If a source is missed, it corresponds to an empty list.
                          e.g. [[diaSrc_0], [], [diaSrc_2], [],...]
            
    """

    detected_set = set()
    missed_set = set()
    dia_list = []

    for i, coord in enumerate(check_coords):
        x = coord[0]
        y = coord[1]
        
        dx = np.abs(x - src_table['base_NaiveCentroid_x']) < half_width
        dy = np.abs(y - src_table['base_NaiveCentroid_y']) < half_width
        
        dx_and_dy = np.logical_and(dx, dy)
        # np.where returns a tuple, only the first element is the index array
        row_indexs = np.where(dx_and_dy)[0]
        dia_list.append(src_table[row_indexs])
        if row_indexs.size > 0:
            detected_set.add(i)
        else:
            missed_set.add(i)
        
    return detected_set, missed_set, dia_list

        
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

def show_injection(exposure, x, y, x_ref=False, y_ref=False, title=None, frame=None, cutout_size=100):
    # x, y:            center of the postage stamps, shown in red
    # x_ref, y_ref:    a reference circle shown in green, it can be used to compared  
    
    xy = geom.PointI(x, y)
    afwDisplay.setDefaultBackend('matplotlib')
    display = afwDisplay.Display(frame=frame)
    display.mtv(exposure)
    display.dot('o', xy.getX(), xy.getY(), ctype='red')
    if x_ref or y_ref:
        xy_ref = geom.PointI(x_ref, y_ref)
        display.dot('o', xy_ref.getX(), xy_ref.getY(), ctype='green')
    plt.title(title)

def show_diff_calexp_coadd(diff_exp, calexp_exp, coadd_exp, x_inj, y_inj, x_src, y_src,
                           diff_title='diff', diff_gray_title='diff: gray',
                           calexp_title='calexp', coadd_title='coadd',
                           cutout_size=100):
    radec = geom.SpherePoint(diff_exp.getWcs().pixelToSky(x_inj, y_inj))

    diff_cutout = make_cutout_radec(diff_exp, radec, cutout_size)
    calexp_cutout = make_cutout_radec(calexp_exp, radec, cutout_size)
    coadd_cutout = make_cutout_radec(coadd_exp, radec, cutout_size)

    calexp_warp = warp_to_exposure(calexp_cutout, diff_cutout)
    coadd_warp = warp_to_exposure(coadd_cutout, diff_cutout)
    
    show_injection(diff_cutout, x_inj, y_inj, x_src, y_src,
                  title=diff_title, cutout_size=cutout_size, frame=1000)
    show_injection(diff_cutout.getImage(), x_inj, y_inj, x_src, y_src,
                  title=diff_gray_title, cutout_size=cutout_size, frame=1001) 
    show_injection(calexp_warp, x_inj, y_inj, x_src, y_src,
                  title=calexp_title, cutout_size=cutout_size, frame=1002)  
    show_injection(coadd_warp, x_inj, y_inj, x_src, y_src,
                  title=coadd_title, cutout_size=cutout_size, frame=1003)  


def display_exposure(exposure, x, y, cutout_size=60, coord_list=None, scale=None, frame=None,
                 show_colorbar=False, title=None, save_name=None):
    """This function displays the postage stamp of an exposure. The center of the postage stamp
       is marked by a red circle. We can also overlay blue circles corresponding to the coordinaes
       given in the coord_list on the postage stamp.
       exposure:       lsst.afw.image.exposure.exposure.ExposureF
       x:              x pixel coordinate
       y:              y pixel coordinate
       cutout_size:    Width(in pixel unit) of the postage stamp , default value is 60
       coord_list:     A list of coordinates where we can overlay blue circles on the postage stamp
       scale:          [min_val, max_val], set the min value and the max value for display,
                       default is None
       frame:          The frame of the afwDisplay.Display object
       show_colorbar:  Show colorbar of the postage stamp, default is False
       title:          Title of the postage stamp
       save_name:      If provided, the postage stamp will be saved as 'save_name.png' in the current
                       working directory, default if None
    """
    cutout_extent = geom.ExtentI(cutout_size, cutout_size)
    radec = geom.SpherePoint(exposure.getWcs().pixelToSky(x, y))
    cutout_image = exposure.getCutout(radec, cutout_extent)
    
    xy = geom.PointI(x, y)
    display = afwDisplay.Display(frame=frame, backend='matplotlib')
    if scale:
        display.scale("linear", scale[0], scale[1])
    else:
        display.scale("linear", "zscale")
    display.mtv(cutout_image)
    if show_colorbar:
        display.show_colorbar()
    display.dot('o', xy.getX(), xy.getY(), ctype='red')
    
    if coord_list:
        for coord in coord_list:
            coord_x, coord_y = coord
            display.dot('o', coord_x, coord_y, ctype='blue')
        
    
    plt.title(title)
    if save_name:
        plt.savefig(save_name, dpi=500)
        
def get_pix_coord_from_src(src_table, coord_type='base_NaiveCentroid'):
    """This function extracts pixel coordinates from a source table.
       src_table:        The source table for extracting coordinates, in astropy table format
       coord_type:       The coordinate type, (e.g. 'base_NaiveCentroid', 'base_PeakCentroid',
                         'base_SdssCentroid'...) Default is 'base_NaiveCentroid'
       Returns:
       A list of coordinates ([[x_1, y_1], [x_2, y_2], [x_3, y_3], ...]), sorted the same as
       the src_table's rows
    """
    coord_list = []
    for row in src_table:
        x, y = row['{}_x'.format(coord_type)], row['{}_y'.format(coord_type)]
        coord_list.append([x, y])
    return coord_list

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

def cal_coord_dist(coord):
    coord2 = np.square(LA.norm(coord, axis=1))
    coord2 = coord2.reshape((len(coord2), -1))
    coord_dot_coord = np.matmul(coord, coord.transpose())
    dist = np.sqrt(coord2 - 2 * coord_dot_coord + coord2.transpose() + 1e-8)
    return dist

def sep_coord(dist_matrix, sep):
    dist_sep = dist_matrix > sep
    for i in range(dist_sep.shape[0]):
        dist_sep[i][i] = True
    count = np.sum(dist_sep, axis=1)
    large2small = np.argsort(-1 * count)
    
    keep_set = set([i for i in range(len(count))])
    drop_set = set()
    for i in large2small:
        if i in drop_set:
            continue
        drop_index = list(np.where(dist_sep[i]==False)[0])
        drop_set.update(drop_index)
        keep_set -= set(drop_index)
    keep_list = list(keep_set)
    return keep_list 

def in_image(ra, dec, wcs, bbox, offset):
    radec = geom.SpherePoint(ra, dec, geom.degrees)
    xy = wcs.skyToPixel(radec)
    phy_x, phy_y = xy.getX(), xy.getY()
    if bbox.beginX + offset <= phy_x and bbox.endX - offset >= phy_x and \
    bbox.beginY + offset <= phy_y and bbox.endY - offset >= phy_y:
        return True
    else:
        return False
def coord_in_image(coord_list, wcs, bbox, offset=20):
    tof_array = np.zeros(len(coord_list))
    for i, coord in enumerate(coord_list):
        ra, dec = coord
        tof = in_image(ra, dec, wcs, bbox, offset=offset)
        tof_array[i] = tof
    return tof_array

def calibrate_instFlux(lsst_table=None, photo_calib=None, flux_type='base_PsfFlux', flux_name=None, err_name=None):
    # convert instFlux to nanojansky
    flux_nanojansky = photo_calib.instFluxToNanojansky(lsst_table, flux_type)
    lsst_astropy = lsst_table.asAstropy()
    lsst_astropy[flux_name]  = flux_nanojansky[:,0]
    lsst_astropy[err_name]  = flux_nanojansky[:,1]
    return lsst_astropy

def get_diff_calexp_coadd_butler(diff_repo, calexp_repo, coadd_repo):
    """
    Returns:
    butler_dict = {
        'diff': diff_butler,
        'calexp_butler': calexp_butler,
        'coadd_butler': coadd_butler
    }
    """
    diff_butler = Butler(diff_repo)
    calexp_butler = Butler(calexp_repo)
    coadd_butler = Butler(coadd_repo)
    butler_dict = {
        'diff': diff_butler,
        'calexp': calexp_butler,
        'coadd': coadd_butler
    }
    return butler_dict

def get_diff_calexp_coadd_exp(diff_butler, calexp_butler, coadd_butler, diff_id, calexp_id, coadd_id):
    """
    returns:
    exp = {
        'diff': diff_exp,
        'calexp': calexp_exp,
        'coadd': coadd_exp
    }
    """
    diff_exp = diff_butler.get('deepDiff_differenceExp', diff_id)
    calexp_exp = calexp_butler.get('calexp', calexp_id)
    coadd_exp = coadd_butler.get('deepCoadd', coadd_id)
    exp = {
        'diff': diff_exp,
        'calexp': calexp_exp,
        'coadd': coadd_exp
    }
    return exp

def get_dia_src_info(butler, data_id, x, y, data_type='deepDiff_diaSrc', half_width=4):
    src = butler.get(data_type, dataId=data_id)
    src = src.asAstropy()
    _, _, dia_list = check_diaSrc_detecion([[x, y]], src, half_width=half_width)
    labels = ['base_NaiveCentroid_x', 'base_NaiveCentroid_y',
              'base_PixelFlags_flag_offimage', 'base_PixelFlags_flag_edge', 'base_PixelFlags_flag_interpolated',
              'base_PixelFlags_flag_saturated', 'base_PixelFlags_flag_cr', 'base_PixelFlags_flag_bad',
              'base_PixelFlags_flag_suspect', 'base_PixelFlags_flag_interpolatedCenter', 'base_PixelFlags_flag_saturatedCenter',
              'base_PixelFlags_flag_crCenter', 'base_PixelFlags_flag_suspectCenter']
    src_info = dia_list[0][labels]
    return src_info

def get_data_id(tract, patch_1, patch_2, filt, visit, detector):

    diff_id = {'visit': visit, 'detector': detector, 'filter': filt}   
    calexp_id = {'visit': visit, 'detector': detector, 'filter': filt}
    coadd_id = {'tract': tract, 'patch': f'{patch_1},{patch_2}', 'filter': filt}
    data_id = {
        'diff': diff_id, 'calexp': calexp_id, 'coadd': coadd_id
    }
    return data_id

    