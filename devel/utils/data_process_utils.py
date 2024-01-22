import numpy as np
import matplotlib.pyplot as plt
from numpy import linalg as LA
from astropy.table import Table
from astropy.coordinates import SkyCoord, match_coordinates_sky
from astropy import units as u
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


######## PSF

def get_psf_width(exp, scale='arcsec'):
    psf = exp.getPsf()
    psf_shape = psf.computeShape()
    ixx = psf_shape.getIxx()
    iyy = psf_shape.getIyy()
    sigma = np.sqrt(( ixx + iyy) / 2 )
    fwhm = 2.355 * sigma
    if scale == 'pixel':
        return fwhm
    elif scale == 'arcsec':
        wcs = exp.getWcs()
        scale = wcs.getPixelScale().asArcseconds()
        return fwhm * scale
    else:
        print("scale should be either 'arcsec' or 'pixel' ")
        return None

######## In Image

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
def coord_in_image(coord_list, wcs, bbox, offset):
    tof_array = np.zeros(len(coord_list))
    for i, coord in enumerate(coord_list):
        ra, dec = coord
        tof = in_image(ra, dec, wcs, bbox, offset=offset)
        tof_array[i] = tof
    return tof_array

######## Butler Operation, Photometric Calibration

def calibrate_instFlux(lsst_table=None, photo_calib=None, flux_type='base_PsfFlux', flux_name=None, err_name=None):
    # 'calexp_photoCalib', 'deepCoadd_photoCalib'
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

# This function is modified from the get_coadd_id_for_ra_dec function from dm_utilities.py
def get_deepCoadd_id(skymap, ra, dec):
    
    radec = geom.SpherePoint(ra, dec, geom.degrees)
    # skymap.findTract finds the tract with the nearest center to the target
    # skymap.findAllTracts finds all tracts which include the target
    tract_info = skymap.findTract(radec)
    patch_info = tract_info.findPatch(radec)
    patch_idx = patch_info.getIndex()
    coadd_id = {'tract': tract_info.getId(), 
                'patch': f'{patch_idx[0]},{patch_idx[1]}' }
    return coadd_id

######## Matching to Variable Catalog

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
    return np.array(variable_xy)

####### Distance Calculation, Coordinagtes Matching

def cal_xy_dist(xy, cat_xy, dim=2):
    xy = np.array(xy).reshape(len(xy), dim)
    cat_xy = np.array(cat_xy).reshape(len(cat_xy), dim)
    xy_2 = np.square(LA.norm(xy, axis=1)).reshape(-1, 1)
    cat_xy_2 = np.square(LA.norm(cat_xy, axis=1)).reshape(-1, 1)
    
    xy_dot_cat_xy = np.matmul(xy, cat_xy.transpose())
    dist_matrix = np.sqrt(xy_2 - 2 * xy_dot_cat_xy + cat_xy_2.transpose() + 1e-8)
    return dist_matrix

def match_xy(xy, cat_xy):
    dist_matrix = cal_xy_dist(xy, cat_xy)
    matched_idx = np.argsort(dist_matrix, axis=1)[:,0]
    matched_dist = np.sort(dist_matrix, axis=1)[:,0]
    return matched_idx, matched_dist

def two_direction_match(xy, cat_xy, radius=4):
    idx, dist = match_xy(xy, cat_xy)
    idx_, dist_ = match_xy(cat_xy, xy)
    within_r = dist <= radius
    cross_match = np.equal(idx_[idx], np.arange(len(idx)))
    matched_status = np.logical_and(within_r, cross_match)
    return matched_status, idx

def one_direction_skymatch(coord, cat_coord, radius=0.4 * u.arcsec):
    # coord is in degree unit
    idx, sep2d, _ = match_coordinates_sky(coord, cat_coord)
    sep2d = sep2d.to(u.arcsec)
    matched_status = sep2d < radius
    return matched_status, idx

def two_direction_skymatch(coord, cat_coord, radius=0.4 * u.arcsec):
    # coord is in degree unit
    idx, sep2d, _ = match_coordinates_sky(coord, cat_coord)
    idx_, _, _ = match_coordinates_sky(cat_coord, coord)
    sep2d = sep2d.to(u.arcsec)
    dist_status = sep2d < radius
    matched_status = idx_[idx] == np.arange(len(idx))
    matched_status = np.logical_and(dist_status, matched_status)
    return matched_status, idx

####### Table Process

def remove_flag(src_df, flag_list=None):
    FLAG_LIST = ['base_PixelFlags_flag_saturated', 'base_PixelFlags_flag_saturatedCenter',
                 'base_PixelFlags_flag_suspect', 'base_PixelFlags_flag_suspectCenter',
                 'base_PixelFlags_flag_offimage', 'base_PixelFlags_flag_edge','base_PixelFlags_flag_bad']
    if not flag_list:
        flag_list = FLAG_LIST
    flags = src_df.loc[:, flag_list]
    keep_id = (flags.sum(axis=1) == 0).to_numpy()
    return src_df[keep_id].copy().reset_index(drop=True)

def remove_flag_astropy(src_table, flag_list=None):

    src_df = src_table.to_pandas()
    flags = src_df.loc[:, flag_list]
    keep_id = (flags.sum(axis=1) == 0).to_numpy()
    src_df = src_df[keep_id].copy().reset_index(drop=True)
    flag_removed =  Table.from_pandas(src_df)
    return flag_removed

def keep_flag_astropy(src_table, flag_list=None):

    src_df = src_table.to_pandas()
    flags = src_df.loc[:, flag_list]
    keep_id = (flags.sum(axis=1) >0).to_numpy()
    src_df = src_df[keep_id].copy().reset_index(drop=True)
    flag_removed =  Table.from_pandas(src_df)
    return flag_removed

def remove_variable(src_df, bbox, wcs,
                    src_coord=['base_NaiveCentroid_x', 'base_NaiveCentroid_y'], matched_radius=4):
    src_xy = src_df.loc[:, src_coord].to_numpy()
    variable_xy = get_variable_xy(bbox, wcs)
    if len(variable_xy) == 0 or len(src_xy) == 0:
        return src_df
    matched_status, matched_id = two_direction_match(src_xy, variable_xy, radius=matched_radius)
    keep_id = matched_status == False
    return src_df[keep_id].copy().reset_index(drop=True)

