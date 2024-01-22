import os
import numpy as np
from numpy import linalg as LA
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle
import lsst.geom as geom
import lsst.afw.image as afwImage
import lsst.afw.display as afwDisplay
from astropy.visualization import ZScaleInterval
interval = ZScaleInterval()

from lsst.ip.diffim import subtractImages
from lsst.ip.diffim import AlardLuptonSubtractTask
from lsst.ip.diffim import DetectAndMeasureConfig, DetectAndMeasureTask
from lsst.ip.diffim import AlardLuptonSubtractConfig, AlardLuptonSubtractTask, AlardLuptonPreconvolveSubtractTask
from lsst.ip.diffim import DetectAndMeasureConfig, DetectAndMeasureTask, DetectAndMeasureScoreConfig, DetectAndMeasureScoreTask

# https://daltonlens.org/colorblindness-simulator
CBCC = ['#377eb8', '#ff7f00', '#4daf4a', '#f781bf', '#a65628', '#984ea3', '#999999', '#e41a1c', '#dede00']

PHOTOMETRY_COLUMNS = ['coord_ra', 'coord_dec', 'base_SdssCentroid_x', 'base_SdssCentroid_y', 'base_PsfFlux_instFlux', 'base_PsfFlux_instFluxErr']

SAT_FLAGS = ['base_PixelFlags_flag_saturated', 'base_PixelFlags_flag_saturatedCenter', 'base_PixelFlags_flag_suspect',
              'base_PixelFlags_flag_suspectCenter', 'base_PixelFlags_flag_offimage', 'base_PixelFlags_flag_edge',
              'base_PixelFlags_flag_bad']
DIPOLE_FLAGS = ['ip_diffim_DipoleFit_flag_classification', 'ip_diffim_DipoleFit_flag_classificationAttempted']
SHAPE_FLAGS = ['base_SdssShape_flag', 'base_GaussianFlux_flag_badShape', 'slot_Shape_flag']

CROPPING_PARAS = {2: {'Lx': 1034, 'Ly': 1016, 'width': 32},
                  3: {'Lx': 700, 'Ly': 688, 'width': 32},
                  4: {'Lx': 533, 'Ly': 524, 'width': 32}}

EXPOSURE_EXTENT = (-50, 4122, -50, 4050)

COLOR_LIST = ['cyan', 'magenta', 'blue', 'red', 'yellow', 'maroon', 'orange', 'green', 'cyan', 'magenta', 'blue', 'red', 'yellow', 'maroon', 'orange', 'green']

def make_cutout(exposure, x, y, cutout_size):
    cutout_extent = geom.ExtentI(cutout_size[0], cutout_size[1])
    radec = geom.SpherePoint(exposure.getWcs().pixelToSky(x, y))
    cutout_image = exposure.getCutout(radec, cutout_extent)
    return cutout_image

def cal_L(cropping_dim, width, shape):
    return int(np.round( ( shape + 2 * ( cropping_dim - 1 ) * width) / ( 2 * cropping_dim) ))

def get_cutout_center_and_span(bbox, cropping_dim=4, Lx=533, Ly=524, width=32):
    """
    cropping_dim:   image is cropped into cropping_dim * cropping_dim
    Lx:             half size of the cutout in x dim
    Ly:             half size of the cutout in y dim  
    width:          detection edge to the image edge
    """
    beginX, beginY = bbox.beginX, bbox.beginY
    center_dict = {}
    span_dict = {}

    xc = beginX + Lx - 1
    yc = beginY + Ly - 1
    for x in range(1, cropping_dim+1):
        for y in range(1, cropping_dim+1):
            center_dict[f'{x}{y}'] = (xc, yc)
            xl = xc - (Lx - 1) + width
            xr = xc + Lx - width
            yl = yc - (Ly - 1) + width
            yr = yc + Ly - width
            span_dict[f'{x}{y}'] = {'x_span': (xl, xr), 'y_span': (yl, yr)}
            yc = yc + 2 * Ly - 2 * width
        xc = xc + 2 * Lx - 2 * width
        yc = beginY + Ly - 1
    return center_dict, span_dict

def crop_exposure(exposure, cropping_center, cropping_dim, x_size, y_size, save_dir=None):
    cutout_dict = {}
    for x in range(1, cropping_dim+1):
        for y in range(1, cropping_dim+1):
            center = cropping_center[f'{x}{y}']
            cx, cy = center[0], center[1]
            cutout = make_cutout(exposure, cx, cy, cutout_size=(x_size, y_size))
            cutout_dict[f'{x}{y}'] = cutout
            if save_dir is not None:
                save_path = os.path.join(save_dir, f'cropped_{x}{y}.fits')
                cutout.writeFits(save_path)
    return cutout_dict
                
def plot_cutout_grid(ax, exposure, cutout_dict, cropping_dim, cropping_span, extent=EXPOSURE_EXTENT, color_list=COLOR_LIST, show_detection_grid=True):
    ax.imshow(interval(exposure.getImage().array), origin='lower', cmap='gray', extent=extent)
    color_id = 0
    for x in range(1, cropping_dim+1):
        for y in range(1, cropping_dim+1):
            cutout = cutout_dict[f'{x}{y}']
            bbox = cutout.getBBox()

            if color_id == len(color_list):
                color_id = 0
            color = color_list[color_id]
            color_id += 1

            rec_width = bbox.endX - bbox.beginX
            rec_height = bbox.endY - bbox.beginY
            rec = Rectangle((bbox.beginX, bbox.beginY), width=rec_width, height=rec_height, linestyle='-', color=color, fill=False)
            ax.add_patch(rec)
            
            if show_detection_grid:
                span = cropping_span[f'{x}{y}']
                x_min, x_max = span['x_span'][0], span['x_span'][1]
                y_min, y_max = span['y_span'][0], span['y_span'][1]

                rec_width = x_max - x_min 
                rec_height = y_max - y_min 
                rec = Rectangle((x_min, y_min), width=rec_width, height=rec_height, linestyle='-', color='k', fill=False)
                ax.add_patch(rec)
                
def add_circular_patch_from_source_table(ax, source_table, bbox, color, alpha=1):
    beginX, beginY = bbox.beginX, bbox.beginY
    for i, row in source_table.iterrows():
        phys_x, phys_y= row['base_SdssCentroid_x'], row['base_SdssCentroid_y']
        dx, dy = phys_x - beginX, phys_y - beginY
        circ = Circle((dx, dy), 50, color=color, fill=False, alpha=alpha)
        ax.add_patch(circ) 

def mag2flux(x, y, mag, photo_calib):
    xy = geom.Point2D(x, y)
    flux = photo_calib.magnitudeToInstFlux(mag, xy)
    return flux
        
def inject_star(exposure, photo_calib, x, y, mag, poisson=False, seed=0): 
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
    flux = photo_calib.magnitudeToInstFlux(mag, xy)
    starIm *= flux
    star_shape = starIm.array.shape
    star_array = starIm.getArray()
    # set fluctuations to zero
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
    
def in_box(x_arr, y_arr, begin_x, end_x, begin_y, end_y):
    x_tof = np.logical_and(begin_x <= x_arr, x_arr <= end_x)
    y_tof = np.logical_and(begin_y <= y_arr, y_arr <= end_y )
    result = np.logical_and(x_tof, y_tof)
    return result
    
def select_source(source_catalog, bbox, offset):
    sdss_x = source_catalog.getX()
    sdss_y = source_catalog.getY()
    begin_x = bbox.beginX + offset
    end_x = bbox.endX - 1 - offset
    begin_y = bbox.beginY + offset
    end_y = bbox.endY - 1 - offset
    result = in_box(sdss_x, sdss_y, begin_x, end_x, begin_y, end_y)
    source_catalog_cropped = source_catalog[result].copy(deep=True)
    return source_catalog_cropped

def in_span(diaSources, span):
    dia_x, dia_y = diaSources.base_SdssCentroid_x.array, diaSources.base_SdssCentroid_y.array
    dia_x_min, dia_x_max = span['x_span'][0], span['x_span'][1]
    dia_y_min, dia_y_max = span['y_span'][0], span['y_span'][1]
    in_span_result = in_box(dia_x, dia_y, begin_x=dia_x_min, end_x=dia_x_max, begin_y=dia_y_min, end_y=dia_y_max)
    return in_span_result

def detect(science, subtraction):
    # Run detection on subtraction
    detect_and_measure_config = DetectAndMeasureConfig()
    detect_and_measure_task = DetectAndMeasureTask(config=detect_and_measure_config)

    detect_and_measure = detect_and_measure_task.run(science,
                                                     subtraction.matchedTemplate,
                                                     subtraction.difference)

    return detect_and_measure
        
def run_subtraction(science, template, source_catalog, spatialKernelOrder=1, convolution_mode="convolveTemplate", get_detection=True, verbose=False):
    """
    convolution mode: "convolveTemplate", "convolveScience"
    """
    subtract_config = subtractImages.AlardLuptonSubtractTask.ConfigClass()
    # https://github.com/lsst/ip_diffim/blob/aca53a8f8ab4d944834cf730af8db7dc982363cf/tests/test_subtractTask.py
    subtract_config.makeKernel.kernel.active.spatialKernelOrder = spatialKernelOrder
    # # https://github.com/lsst/ip_diffim/blob/aca53a8f8ab4d944834cf730af8db7dc982363cf/tests/test_subtractTask.py#L389C25-L389C40
    subtract_config.mode = convolution_mode
    task = AlardLuptonSubtractTask(config=subtract_config)
    if verbose:
        print('-------------------------------------------------------------------------------------------------')
        print('spatial order ', subtract_config.makeKernel.kernel.active.spatialKernelOrder)
        print('convolution mode ', subtract_config.mode)
        print(f'{len(source_catalog)} stars are used for fitting: ')
        print('-------------------------------------------------------------------------------------------------')
    subtraction = task.run(template=template, science=science, sources=source_catalog)
    detection = None
    if get_detection:
        detection =  detect(science=science, subtraction=subtraction)
    return subtraction, detection

def display_exposure(exposure, crop_exposure=False, cutout_x=None, cutout_y=None, cutout_size=60):
    afwDisplay.setDefaultBackend('matplotlib')
    display = afwDisplay.Display(frame=None)
    # display.scale('linear', 'zscale')
    display.scale('asinh', 'zscale')
    # display.setMaskTransparency(100)
    if crop_exposure:
        cutout = make_cutout(exposure, cutout_x, cutout_y, cutout_size=(cutout_size, cutout_size))
        display.mtv(cutout)
    else:
        display.mtv(exposure)
        
def display_exposure_on_axis(fig, axis, exposure, crop_exposure=False, cutout_x=None, cutout_y=None, cutout_size=60):
    afwDisplay.setDefaultBackend('matplotlib')
    plt.sca(axis)
    display = afwDisplay.Display(frame=fig)
    # display.scale('linear', 'zscale')
    display.scale('asinh', 'zscale')
    # display.setMaskTransparency(80)
    if crop_exposure:
        cutout = make_cutout(exposure, cutout_x, cutout_y, cutout_size=(cutout_size, cutout_size))
        display.mtv(cutout)
    else:
        display.mtv(exposure)