import numpy as np
from lsst.daf.persistence import Butler
import lsst.geom as geom
import lsst.afw.image as afwImage
import lsst.afw.display as afwDisplay

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
    
    for coord in coord_list:
        coord_x, coord_y = coord
        display.dot('o', coord_x, coord_y, ctype='blue')

    plt.title(title)
    if save_name:
        plt.savefig(save_name, dpi=500)
