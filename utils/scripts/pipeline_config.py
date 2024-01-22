CameraMapper INFO: Loading exposure registry from /global/cfs/cdirs/lsst/shared/DC2-prod/Run2.2i/desc_dm_drp/v19.0.0/registry.sqlite3
CameraMapper INFO: Loading calib registry from /global/cfs/cdirs/lsst/shared/DC2-prod/Run2.2i/desc_dm_drp/v19.0.0/CALIB/calibRegistry.sqlite3
CameraMapper INFO: Loading calib registry from /global/cfs/cdirs/lsst/shared/DC2-prod/Run2.2i/desc_dm_drp/v19.0.0/CALIB/calibRegistry.sqlite3
LsstCamMapper WARN: Unable to find valid calib root directory
LsstCamMapper WARN: Unable to find valid calib root directory
LsstCamMapper WARN: Unable to find valid calib root directory
import lsst.dia.pipe.imageDifferenceDriver
assert type(config)==lsst.dia.pipe.imageDifferenceDriver.ImageDifferenceDriverConfig, 'config is of type %s.%s instead of lsst.dia.pipe.imageDifferenceDriver.ImageDifferenceDriverConfig' % (type(config).__module__, type(config).__name__)
import lsst.ip.diffim.psfMatch
import lsst.meas.base.baseMeasurement
import lsst.ip.diffim.dipoleMeasurement
import lsst.meas.base.naiveCentroid
import lsst.meas.base.localBackground
import lsst.meas.base.gaussianFlux
import lsst.meas.base.wrappers
import lsst.meas.astrom.matchPessimisticB
import lsst.meas.algorithms.loadIndexedReferenceObjects
import lsst.meas.base.apertureFlux
import lsst.pipe.tasks.scaleVariance
import lsst.pipe.tasks.registerImage
import lsst.meas.algorithms.sourceSelector
import lsst.ip.diffim.dipoleFitTask
import lsst.meas.base.sdssShape
import lsst.ip.diffim.imageMapReduce
import lsst.meas.astrom.fitTanSipWcs
import lsst.meas.base.sfm
import lsst.ip.diffim.zogy
import lsst.meas.base.blendedness
import lsst.meas.base.pixelFlags
import lsst.meas.base.psfFlux
import lsst.meas.base.plugins
import lsst.meas.astrom.astrometry
import lsst.meas.algorithms.objectSizeStarSelector
import lsst.ip.diffim._dipoleAlgorithms
import lsst.meas.base.forcedMeasurement
import lsst.ip.diffim.imageDecorrelation
import lsst.pipe.tasks.imageDifference
import lsst.meas.algorithms.subtractBackground
import lsst.meas.algorithms.flaggedSourceSelector
import lsst.meas.base.sdssCentroid
import lsst.ip.diffim.diaCatalogSourceSelector
import lsst.meas.base.noiseReplacer
import lsst.meas.base.peakLikelihoodFlux
import lsst.meas.algorithms.matcherSourceSelector
import lsst.afw.math.warper
import lsst.meas.base.scaledApertureFlux
import lsst.meas.algorithms.astrometrySourceSelector
import lsst.meas.base.applyApCorr
import lsst.ip.diffim.imagePsfMatch
import lsst.meas.algorithms.detection
import lsst.ip.diffim.getTemplate
import lsst.pipe.base.config
# List of CCDs to ignore when processing
config.ignoreCcdList=[]

# DataId key corresponding to a single sensor
config.ccdKey='detector'

# Flag to enable/disable metadata saving for a task, enabled by default.
config.imageDifference.saveMetadata=True

# Add background to calexp before processing it.  Useful as ipDiffim does background matching.
config.imageDifference.doAddCalexpBackground=False

# Use image-to-image registration to align template with science image
config.imageDifference.doUseRegister=False

# Writing debugging data for doUseRegister
config.imageDifference.doDebugRegister=False

# Select stars to use for kernel fitting
config.imageDifference.doSelectSources=True

# Select stars of extreme color as part of the control sample
config.imageDifference.doSelectDcrCatalog=False

# Select stars that are variable to be part of the control sample
config.imageDifference.doSelectVariableCatalog=False

# Compute subtracted exposure?
config.imageDifference.doSubtract=True

# Convolve science image by its PSF before PSF-matching?
config.imageDifference.doPreConvolve=False

# Scale variance of the template before PSF matching
config.imageDifference.doScaleTemplateVariance=False

# Use a simple gaussian PSF model for pre-convolution (else use fit PSF)? Ignored if doPreConvolve false.
config.imageDifference.useGaussianForPreConvolution=True

# Detect sources?
config.imageDifference.doDetection=True

# Perform diffim decorrelation to undo pixel correlation due to A&L kernel convolution? If True, also update the diffim PSF.
config.imageDifference.doDecorrelation=False

# Merge positive and negative diaSources with grow radius set by growFootprint
config.imageDifference.doMerge=True

# Match diaSources with input calexp sources and ref catalog sources
config.imageDifference.doMatchSources=False

# Measure diaSources?
config.imageDifference.doMeasurement=True

# Measure dipoles using new algorithm?
config.imageDifference.doDipoleFitting=True

# Force photometer diaSource locations on PVI?
config.imageDifference.doForcedMeasurement=True

# Write difference exposure?
config.imageDifference.doWriteSubtractedExp=True

# Write warped and PSF-matched template coadd exposure?
config.imageDifference.doWriteMatchedExp=False

# Write sources?
config.imageDifference.doWriteSources=True

# Add columns to the source table to hold analysis metrics?
config.imageDifference.doAddMetrics=False

# coadd name: typically one of deep, goodSeeing, or dcr
config.imageDifference.coaddName='deep'

# Which image gets convolved (default = template)
config.imageDifference.convolveTemplate=True

# Padding to add to 4 all edges of the bounding box (pixels)
config.imageDifference.refObjLoader.pixelMargin=300

# Default reference catalog filter to use if filter not specified in exposure; if blank then filter must be specified in exposure
config.imageDifference.refObjLoader.defaultFilter=''

# Mapping of camera filter name: reference catalog filter name; each reference filter must exist
config.imageDifference.refObjLoader.filterMap={'u': 'lsst_u_smeared', 'g': 'lsst_g_smeared', 'r': 'lsst_r_smeared', 'i': 'lsst_i_smeared', 'z': 'lsst_z_smeared', 'y': 'lsst_y_smeared'}

# Require that the fields needed to correct proper motion (epoch, pm_ra and pm_dec) are present?
config.imageDifference.refObjLoader.requireProperMotion=False

# Name of the ingested reference dataset
config.imageDifference.refObjLoader.ref_dataset_name='cal_ref_cat'

# Number of bright stars to use. Sets the max number of patterns that can be tested.
config.imageDifference.astrometer.matcher.numBrightStars=200

# Minimum number of matched pairs; see also minFracMatchedPairs.
config.imageDifference.astrometer.matcher.minMatchedPairs=30

# Minimum number of matched pairs as a fraction of the smaller of the number of reference stars or the number of good sources; the actual minimum is the smaller of this value or minMatchedPairs.
config.imageDifference.astrometer.matcher.minFracMatchedPairs=0.3

# Number of softening iterations in matcher.
config.imageDifference.astrometer.matcher.matcherIterations=5

# Maximum allowed shift of WCS, due to matching (pixel). When changing this value, the LoadReferenceObjectsConfig.pixelMargin should also be updated.
config.imageDifference.astrometer.matcher.maxOffsetPix=300

# Rotation angle allowed between sources and position reference objects (degrees).
config.imageDifference.astrometer.matcher.maxRotationDeg=1.0

# Number of points to define a shape for matching.
config.imageDifference.astrometer.matcher.numPointsForShape=6

# Number of points to try for creating a shape. This value should be greater than or equal to numPointsForShape. Besides loosening the signal to noise cut in the 'matcher' SourceSelector, increasing this number will solve CCDs where no match was found.
config.imageDifference.astrometer.matcher.numPointsForShapeAttempt=6

# Distance in units of pixels to always consider a source-reference pair a match. This prevents the astrometric fitter from over-fitting and removing stars that should be matched and allows for inclusion of new matches as the wcs improves.
config.imageDifference.astrometer.matcher.minMatchDistPixels=1.0

# Number of implied shift/rotations from patterns that must agree before it a given shift/rotation is accepted. This is only used after the first softening iteration fails and if both the number of reference and source objects is greater than numBrightStars.
config.imageDifference.astrometer.matcher.numPatternConsensus=3

# If the available reference objects exceeds this number, consensus/pessimistic mode will enforced regardless of the number of available sources. Below this optimistic mode (exit at first match rather than requiring numPatternConsensus to be matched) can be used. If more sources are required to match, decrease the signal to noise cut in the sourceSelector.
config.imageDifference.astrometer.matcher.numRefRequireConsensus=1000

# Maximum number of reference objects to use for the matcher. The absolute maximum allowed for is 2 ** 16 for memory reasons.
config.imageDifference.astrometer.matcher.maxRefObjects=65536

# the maximum match distance is set to  mean_match_distance + matchDistanceSigma*std_dev_match_distance; ignored if not fitting a WCS
config.imageDifference.astrometer.matchDistanceSigma=2.0

# Apply flux limit?
config.imageDifference.astrometer.sourceSelector['science'].doFluxLimit=False

# Apply flag limitation?
config.imageDifference.astrometer.sourceSelector['science'].doFlags=False

# Apply unresolved limitation?
config.imageDifference.astrometer.sourceSelector['science'].doUnresolved=False

# Apply signal-to-noise limit?
config.imageDifference.astrometer.sourceSelector['science'].doSignalToNoise=False

# Apply isolated limitation?
config.imageDifference.astrometer.sourceSelector['science'].doIsolated=False

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['science'].fluxLimit.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['science'].fluxLimit.maximum=None

# Name of the source flux field to use.
config.imageDifference.astrometer.sourceSelector['science'].fluxLimit.fluxField='slot_CalibFlux_instFlux'

# List of source flag fields that must be set for a source to be used.
config.imageDifference.astrometer.sourceSelector['science'].flags.good=[]

# List of source flag fields that must NOT be set for a source to be used.
config.imageDifference.astrometer.sourceSelector['science'].flags.bad=['base_PixelFlags_flag_edge', 'base_PixelFlags_flag_saturated', 'base_PsfFlux_flags']

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['science'].unresolved.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['science'].unresolved.maximum=0.5

# Name of column for star/galaxy separation
config.imageDifference.astrometer.sourceSelector['science'].unresolved.name='base_ClassificationExtendedness_value'

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['science'].signalToNoise.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['science'].signalToNoise.maximum=None

# Name of the source flux field to use.
config.imageDifference.astrometer.sourceSelector['science'].signalToNoise.fluxField='base_PsfFlux_instFlux'

# Name of the source flux error field to use.
config.imageDifference.astrometer.sourceSelector['science'].signalToNoise.errField='base_PsfFlux_instFluxErr'

# Name of column for parent
config.imageDifference.astrometer.sourceSelector['science'].isolated.parentName='parent'

# Name of column for nChild
config.imageDifference.astrometer.sourceSelector['science'].isolated.nChildName='deblend_nChild'

# Apply magnitude limit?
config.imageDifference.astrometer.sourceSelector['references'].doMagLimit=False

# Apply flag limitation?
config.imageDifference.astrometer.sourceSelector['references'].doFlags=False

# Apply unresolved limitation?
config.imageDifference.astrometer.sourceSelector['references'].doUnresolved=False

# Apply signal-to-noise limit?
config.imageDifference.astrometer.sourceSelector['references'].doSignalToNoise=False

# Apply magnitude error limit?
config.imageDifference.astrometer.sourceSelector['references'].doMagError=False

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['references'].magLimit.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['references'].magLimit.maximum=None

# Name of the source flux field to use.
config.imageDifference.astrometer.sourceSelector['references'].magLimit.fluxField='flux'

# List of source flag fields that must be set for a source to be used.
config.imageDifference.astrometer.sourceSelector['references'].flags.good=[]

# List of source flag fields that must NOT be set for a source to be used.
config.imageDifference.astrometer.sourceSelector['references'].flags.bad=[]

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['references'].unresolved.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['references'].unresolved.maximum=0.5

# Name of column for star/galaxy separation
config.imageDifference.astrometer.sourceSelector['references'].unresolved.name='base_ClassificationExtendedness_value'

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['references'].signalToNoise.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['references'].signalToNoise.maximum=None

# Name of the source flux field to use.
config.imageDifference.astrometer.sourceSelector['references'].signalToNoise.fluxField='flux'

# Name of the source flux error field to use.
config.imageDifference.astrometer.sourceSelector['references'].signalToNoise.errField='flux_err'

# Select objects with value greater than this
config.imageDifference.astrometer.sourceSelector['references'].magError.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.sourceSelector['references'].magError.maximum=None

# Name of the source flux error field to use.
config.imageDifference.astrometer.sourceSelector['references'].magError.magErrField='mag_err'

config.imageDifference.astrometer.sourceSelector['references'].colorLimits={}
# Apply flux limit to Psf Candidate selection?
config.imageDifference.astrometer.sourceSelector['objectSize'].doFluxLimit=True

# specify the minimum psfFlux for good Psf Candidates
config.imageDifference.astrometer.sourceSelector['objectSize'].fluxMin=12500.0

# specify the maximum psfFlux for good Psf Candidates (ignored if == 0)
config.imageDifference.astrometer.sourceSelector['objectSize'].fluxMax=0.0

# Apply signal-to-noise (i.e. flux/fluxErr) limit to Psf Candidate selection?
config.imageDifference.astrometer.sourceSelector['objectSize'].doSignalToNoiseLimit=False

# specify the minimum signal-to-noise for good Psf Candidates
config.imageDifference.astrometer.sourceSelector['objectSize'].signalToNoiseMin=20.0

# specify the maximum signal-to-noise for good Psf Candidates (ignored if == 0)
config.imageDifference.astrometer.sourceSelector['objectSize'].signalToNoiseMax=0.0

# minimum width to include in histogram
config.imageDifference.astrometer.sourceSelector['objectSize'].widthMin=0.0

# maximum width to include in histogram
config.imageDifference.astrometer.sourceSelector['objectSize'].widthMax=10.0

# Name of field in Source to use for flux measurement
config.imageDifference.astrometer.sourceSelector['objectSize'].sourceFluxField='base_GaussianFlux_instFlux'

# Standard deviation of width allowed to be interpreted as good stars
config.imageDifference.astrometer.sourceSelector['objectSize'].widthStdAllowed=0.15

# Keep objects within this many sigma of cluster 0's median
config.imageDifference.astrometer.sourceSelector['objectSize'].nSigmaClip=2.0

# List of flags which cause a source to be rejected as bad
config.imageDifference.astrometer.sourceSelector['objectSize'].badFlags=['base_PixelFlags_flag_edge', 'base_PixelFlags_flag_interpolatedCenter', 'base_PixelFlags_flag_saturatedCenter', 'base_PixelFlags_flag_crCenter', 'base_PixelFlags_flag_bad', 'base_PixelFlags_flag_interpolated']

# Name of a flag field that is True for Sources that should be used.
config.imageDifference.astrometer.sourceSelector['flagged'].field='calib_psf_used'

# List of flags which cause a source to be rejected as bad
config.imageDifference.astrometer.sourceSelector['astrometry'].badFlags=['base_PixelFlags_flag_edge', 'base_PixelFlags_flag_interpolatedCenter', 'base_PixelFlags_flag_saturatedCenter', 'base_PixelFlags_flag_crCenter', 'base_PixelFlags_flag_bad']

# Type of source flux; typically one of Ap or Psf
config.imageDifference.astrometer.sourceSelector['astrometry'].sourceFluxType='Ap'

# Minimum allowed signal-to-noise ratio for sources used for matching (in the flux specified by sourceFluxType); <= 0 for no limit
config.imageDifference.astrometer.sourceSelector['astrometry'].minSnr=10.0

# Type of source flux; typically one of Ap or Psf
config.imageDifference.astrometer.sourceSelector['matcher'].sourceFluxType='Ap'

# Minimum allowed signal-to-noise ratio for sources used for matching (in the flux specified by sourceFluxType); <= 0 for no limit
config.imageDifference.astrometer.sourceSelector['matcher'].minSnr=40.0

# Exclude objects that have saturated, interpolated, or edge pixels using PixelFlags. For matchOptimisticB set this to False to recover previous matcher selector behavior.
config.imageDifference.astrometer.sourceSelector['matcher'].excludePixelFlags=True

# List of flags which cause a source to be rejected as bad
config.imageDifference.astrometer.sourceSelector['diaCatalog'].badFlags=['base_PixelFlags_flag_edge', 'base_PixelFlags_flag_interpolatedCenter', 'base_PixelFlags_flag_saturatedCenter', 'slot_Centroid_flag']

# specify the minimum psfFlux for good Kernel Candidates
config.imageDifference.astrometer.sourceSelector['diaCatalog'].fluxLim=0.0

# specify the maximum psfFlux for good Kernel Candidates (ignored if == 0)
config.imageDifference.astrometer.sourceSelector['diaCatalog'].fluxMax=0.0

# Select objects that are flagged as stars
config.imageDifference.astrometer.sourceSelector['diaCatalog'].selectStar=True

# Select objects that are flagged as galaxies
config.imageDifference.astrometer.sourceSelector['diaCatalog'].selectGalaxy=False

# Include objects that are known to be variable
config.imageDifference.astrometer.sourceSelector['diaCatalog'].includeVariable=False

# Minimum g-r color for selection (inclusive)
config.imageDifference.astrometer.sourceSelector['diaCatalog'].grMin=0.0

# Maximum g-r color for selection (inclusive)
config.imageDifference.astrometer.sourceSelector['diaCatalog'].grMax=3.0

config.imageDifference.astrometer.sourceSelector.name='matcher'
# Apply magnitude limit?
config.imageDifference.astrometer.referenceSelector.doMagLimit=False

# Apply flag limitation?
config.imageDifference.astrometer.referenceSelector.doFlags=False

# Apply unresolved limitation?
config.imageDifference.astrometer.referenceSelector.doUnresolved=False

# Apply signal-to-noise limit?
config.imageDifference.astrometer.referenceSelector.doSignalToNoise=False

# Apply magnitude error limit?
config.imageDifference.astrometer.referenceSelector.doMagError=False

# Select objects with value greater than this
config.imageDifference.astrometer.referenceSelector.magLimit.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.referenceSelector.magLimit.maximum=None

# Name of the source flux field to use.
config.imageDifference.astrometer.referenceSelector.magLimit.fluxField='flux'

# List of source flag fields that must be set for a source to be used.
config.imageDifference.astrometer.referenceSelector.flags.good=[]

# List of source flag fields that must NOT be set for a source to be used.
config.imageDifference.astrometer.referenceSelector.flags.bad=[]

# Select objects with value greater than this
config.imageDifference.astrometer.referenceSelector.unresolved.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.referenceSelector.unresolved.maximum=0.5

# Name of column for star/galaxy separation
config.imageDifference.astrometer.referenceSelector.unresolved.name='base_ClassificationExtendedness_value'

# Select objects with value greater than this
config.imageDifference.astrometer.referenceSelector.signalToNoise.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.referenceSelector.signalToNoise.maximum=None

# Name of the source flux field to use.
config.imageDifference.astrometer.referenceSelector.signalToNoise.fluxField='flux'

# Name of the source flux error field to use.
config.imageDifference.astrometer.referenceSelector.signalToNoise.errField='flux_err'

# Select objects with value greater than this
config.imageDifference.astrometer.referenceSelector.magError.minimum=None

# Select objects with value less than this
config.imageDifference.astrometer.referenceSelector.magError.maximum=None

# Name of the source flux error field to use.
config.imageDifference.astrometer.referenceSelector.magError.magErrField='mag_err'

config.imageDifference.astrometer.referenceSelector.colorLimits={}
# Source flux type to use in source selection.
config.imageDifference.astrometer.sourceFluxType='Ap'

# order of SIP polynomial
config.imageDifference.astrometer.wcsFitter.order=2

# number of iterations of fitter (which fits X and Y separately, and so benefits from a few iterations
config.imageDifference.astrometer.wcsFitter.numIter=3

# number of rejection iterations
config.imageDifference.astrometer.wcsFitter.numRejIter=1

# Number of standard deviations for clipping level
config.imageDifference.astrometer.wcsFitter.rejSigma=3.0

# maximum median scatter of a WCS fit beyond which the fit fails (arcsec); be generous, as this is only intended to catch catastrophic failures
config.imageDifference.astrometer.wcsFitter.maxScatterArcsec=10.0

# If True then load reference objects and match sources but do not fit a WCS; this simply controls whether 'run' calls 'solve' or 'loadAndMatch'
config.imageDifference.astrometer.forceKnownWcs=False

# maximum number of iterations of match sources and fit WCSignored if not fitting a WCS
config.imageDifference.astrometer.maxIter=3

# the match distance below which further iteration is pointless (arcsec); ignored if not fitting a WCS
config.imageDifference.astrometer.minMatchDistanceArcSec=0.001

# Apply flux limit to Psf Candidate selection?
config.imageDifference.sourceSelector.doFluxLimit=True

# specify the minimum psfFlux for good Psf Candidates
config.imageDifference.sourceSelector.fluxMin=12500.0

# specify the maximum psfFlux for good Psf Candidates (ignored if == 0)
config.imageDifference.sourceSelector.fluxMax=0.0

# Apply signal-to-noise (i.e. flux/fluxErr) limit to Psf Candidate selection?
config.imageDifference.sourceSelector.doSignalToNoiseLimit=False

# specify the minimum signal-to-noise for good Psf Candidates
config.imageDifference.sourceSelector.signalToNoiseMin=20.0

# specify the maximum signal-to-noise for good Psf Candidates (ignored if == 0)
config.imageDifference.sourceSelector.signalToNoiseMax=0.0

# minimum width to include in histogram
config.imageDifference.sourceSelector.widthMin=0.0

# maximum width to include in histogram
config.imageDifference.sourceSelector.widthMax=10.0

# Name of field in Source to use for flux measurement
config.imageDifference.sourceSelector.sourceFluxField='base_GaussianFlux_instFlux'

# Standard deviation of width allowed to be interpreted as good stars
config.imageDifference.sourceSelector.widthStdAllowed=0.15

# Keep objects within this many sigma of cluster 0's median
config.imageDifference.sourceSelector.nSigmaClip=2.0

# List of flags which cause a source to be rejected as bad
config.imageDifference.sourceSelector.badFlags=['base_PixelFlags_flag_edge', 'base_PixelFlags_flag_interpolatedCenter', 'base_PixelFlags_flag_saturatedCenter', 'base_PixelFlags_flag_crCenter', 'base_PixelFlags_flag_bad', 'base_PixelFlags_flag_interpolated']

# Warping kernel
config.imageDifference.subtract['al'].kernel['AL'].warpingConfig.warpingKernelName='lanczos3'

# Warping kernel for mask (use ``warpingKernelName`` if '')
config.imageDifference.subtract['al'].kernel['AL'].warpingConfig.maskWarpingKernelName='bilinear'

# ``interpLength`` argument to `lsst.afw.math.warpExposure`
config.imageDifference.subtract['al'].kernel['AL'].warpingConfig.interpLength=10

# ``cacheSize`` argument to `lsst.afw.math.SeparableKernel.computeCache`
config.imageDifference.subtract['al'].kernel['AL'].warpingConfig.cacheSize=1000000

# mask bits to grow to full width of image/variance kernel,
config.imageDifference.subtract['al'].kernel['AL'].warpingConfig.growFullMask=16

# Value of footprint detection threshold
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.detThreshold=10.0

# Type of detection threshold
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.detThresholdType='pixel_stdev'

# If true run detection on the template (image to convolve);
#                  if false run detection on the science image
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.detOnTemplate=True

# Mask planes that lead to an invalid detection.
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Minimum number of pixels in an acceptable Footprint
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.fpNpixMin=5

# Maximum number of pixels in an acceptable Footprint;
#                  too big and the subsequent convolutions become unwieldy
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.fpNpixMax=500

# If config.scaleByFwhm, grow the footprint based on
#                  the final kernelSize.  Each footprint will be
#                  2*fpGrowKernelScaling*kernelSize x
#                  2*fpGrowKernelScaling*kernelSize.  With the value
#                  of 1.0, the remaining pixels in each KernelCandiate
#                  after convolution by the basis functions will be
#                  equal to the kernel size itself.
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.fpGrowKernelScaling=1.0

# Growing radius (in pixels) for each raw detection
#                  footprint.  The smaller the faster; however the
#                  kernel sum does not converge if the stamp is too
#                  small; and the kernel is not constrained at all if
#                  the stamp is the size of the kernel.  The grown stamp
#                  is 2 * fpGrowPix pixels larger in each dimension.
#                  This is overridden by fpGrowKernelScaling if scaleByFwhm
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.fpGrowPix=30

# Scale fpGrowPix by input Fwhm?
config.imageDifference.subtract['al'].kernel['AL'].detectionConfig.scaleByFwhm=True

# type of statistic to use for grid points
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.weighting=True

# Use afw background subtraction instead of ip_diffim
config.imageDifference.subtract['al'].kernel['AL'].useAfwBackground=False

# Include terms (including kernel cross terms) for background in ip_diffim
config.imageDifference.subtract['al'].kernel['AL'].fitForBackground=True

# Type of basis set for PSF matching kernel.
config.imageDifference.subtract['al'].kernel['AL'].kernelBasisSet='alard-lupton'

# Number of rows/columns in the convolution kernel; should be odd-valued.
#                  Modified by kernelSizeFwhmScaling if scaleByFwhm = true
config.imageDifference.subtract['al'].kernel['AL'].kernelSize=21

# Scale kernelSize, alardGaussians by input Fwhm
config.imageDifference.subtract['al'].kernel['AL'].scaleByFwhm=True

# Multiplier of the largest AL Gaussian basis sigma to get the kernel bbox (pixel) size.
config.imageDifference.subtract['al'].kernel['AL'].kernelSizeFwhmScaling=6.0

# Minimum kernel bbox (pixel) size.
config.imageDifference.subtract['al'].kernel['AL'].kernelSizeMin=21

# Maximum kernel bbox (pixel) size.
config.imageDifference.subtract['al'].kernel['AL'].kernelSizeMax=35

# Type of spatial functions for kernel and background
config.imageDifference.subtract['al'].kernel['AL'].spatialModelType='chebyshev1'

# Spatial order of convolution kernel variation
config.imageDifference.subtract['al'].kernel['AL'].spatialKernelOrder=1

# Spatial order of differential background variation
config.imageDifference.subtract['al'].kernel['AL'].spatialBgOrder=2

# Size (rows) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['al'].kernel['AL'].sizeCellX=128

# Size (columns) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['al'].kernel['AL'].sizeCellY=128

# Number of KernelCandidates in each SpatialCell to use in the spatial fitting
config.imageDifference.subtract['al'].kernel['AL'].nStarPerCell=3

# Maximum number of iterations for rejecting bad KernelCandidates in spatial fitting
config.imageDifference.subtract['al'].kernel['AL'].maxSpatialIterations=3

# Use Pca to reduce the dimensionality of the kernel basis sets.
#                  This is particularly useful for delta-function kernels.
#                  Functionally, after all Cells have their raw kernels determined, we run
#                  a Pca on these Kernels, re-fit the Cells using the eigenKernels and then
#                  fit those for spatial variation using the same technique as for Alard-Lupton kernels.
#                  If this option is used, the first term will have no spatial variation and the
#                  kernel sum will be conserved.
config.imageDifference.subtract['al'].kernel['AL'].usePcaForSpatialKernel=False

# Subtract off the mean feature before doing the Pca
config.imageDifference.subtract['al'].kernel['AL'].subtractMeanForPca=True

# Number of principal components to use for Pca basis, including the
#                  mean kernel if requested.
config.imageDifference.subtract['al'].kernel['AL'].numPrincipalComponents=5

# Do sigma clipping on each raw kernel candidate
config.imageDifference.subtract['al'].kernel['AL'].singleKernelClipping=True

# Do sigma clipping on the ensemble of kernel sums
config.imageDifference.subtract['al'].kernel['AL'].kernelSumClipping=True

# Do sigma clipping after building the spatial model
config.imageDifference.subtract['al'].kernel['AL'].spatialKernelClipping=True

# Test for maximum condition number when inverting a kernel matrix.
#                  Anything above maxConditionNumber is not used and the candidate is set as BAD.
#                  Also used to truncate inverse matrix in estimateBiasedRisk.  However,
#                  if you are doing any deconvolution you will want to turn this off, or use
#                  a large maxConditionNumber
config.imageDifference.subtract['al'].kernel['AL'].checkConditionNumber=False

# Mask planes to ignore when calculating diffim statistics
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['al'].kernel['AL'].badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents average over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['al'].kernel['AL'].candidateResidualMeanMax=0.25

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents stddev over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['al'].kernel['AL'].candidateResidualStdMax=1.5

# Use the core of the footprint for the quality statistics, instead of the entire footprint.
#                  WARNING: if there is deconvolution we probably will need to turn this off
config.imageDifference.subtract['al'].kernel['AL'].useCoreStats=False

# Radius for calculation of stats in 'core' of KernelCandidate diffim.
#                  Total number of pixels used will be (2*radius)**2.
#                  This is used both for 'core' diffim quality as well as ranking of
#                  KernelCandidates by their total flux in this core
config.imageDifference.subtract['al'].kernel['AL'].candidateCoreRadius=3

# Maximum allowed sigma for outliers from kernel sum distribution.
#                  Used to reject variable objects from the kernel model
config.imageDifference.subtract['al'].kernel['AL'].maxKsumSigma=3.0

# Maximum condition number for a well conditioned matrix
config.imageDifference.subtract['al'].kernel['AL'].maxConditionNumber=50000000.0

# Use singular values (SVD) or eigen values (EIGENVALUE) to determine condition number
config.imageDifference.subtract['al'].kernel['AL'].conditionNumberType='EIGENVALUE'

# Maximum condition number for a well conditioned spatial matrix
config.imageDifference.subtract['al'].kernel['AL'].maxSpatialConditionNumber=10000000000.0

# Remake KernelCandidate using better variance estimate after first pass?
#                  Primarily useful when convolving a single-depth image, otherwise not necessary.
config.imageDifference.subtract['al'].kernel['AL'].iterateSingleKernel=False

# Use constant variance weighting in single kernel fitting?
#                  In some cases this is better for bright star residuals.
config.imageDifference.subtract['al'].kernel['AL'].constantVarianceWeighting=True

# Calculate kernel and background uncertainties for each kernel candidate?
#                  This comes from the inverse of the covariance matrix.
#                  Warning: regularization can cause problems for this step.
config.imageDifference.subtract['al'].kernel['AL'].calculateKernelUncertainty=False

# Use Bayesian Information Criterion to select the number of bases going into the kernel
config.imageDifference.subtract['al'].kernel['AL'].useBicForKernelBasis=False

# Number of base Gaussians in alard-lupton kernel basis function generation.
config.imageDifference.subtract['al'].kernel['AL'].alardNGauss=3

# Polynomial order of spatial modification of base Gaussians. List length must be `alardNGauss`.
config.imageDifference.subtract['al'].kernel['AL'].alardDegGauss=[4, 2, 2]

# Default sigma values in pixels of base Gaussians. List length must be `alardNGauss`.
config.imageDifference.subtract['al'].kernel['AL'].alardSigGauss=[0.7, 1.5, 3.0]

# Used if `scaleByFwhm==True`, scaling multiplier of base Gaussian sigmas for automated sigma determination
config.imageDifference.subtract['al'].kernel['AL'].alardGaussBeta=2.0

# Used if `scaleByFwhm==True`, minimum sigma (pixels) for base Gaussians
config.imageDifference.subtract['al'].kernel['AL'].alardMinSig=0.7

# Used if `scaleByFwhm==True`, degree of spatial modification of ALL base Gaussians in AL basis during deconvolution
config.imageDifference.subtract['al'].kernel['AL'].alardDegGaussDeconv=3

# Used if `scaleByFwhm==True`, minimum sigma (pixels) for base Gaussians during deconvolution; make smaller than `alardMinSig` as this is only indirectly used
config.imageDifference.subtract['al'].kernel['AL'].alardMinSigDeconv=0.4

# Used if `scaleByFwhm==True`, number of base Gaussians in AL basis during deconvolution
config.imageDifference.subtract['al'].kernel['AL'].alardNGaussDeconv=3

# Warping kernel
config.imageDifference.subtract['al'].kernel['DF'].warpingConfig.warpingKernelName='lanczos3'

# Warping kernel for mask (use ``warpingKernelName`` if '')
config.imageDifference.subtract['al'].kernel['DF'].warpingConfig.maskWarpingKernelName='bilinear'

# ``interpLength`` argument to `lsst.afw.math.warpExposure`
config.imageDifference.subtract['al'].kernel['DF'].warpingConfig.interpLength=10

# ``cacheSize`` argument to `lsst.afw.math.SeparableKernel.computeCache`
config.imageDifference.subtract['al'].kernel['DF'].warpingConfig.cacheSize=1000000

# mask bits to grow to full width of image/variance kernel,
config.imageDifference.subtract['al'].kernel['DF'].warpingConfig.growFullMask=16

# Value of footprint detection threshold
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.detThreshold=10.0

# Type of detection threshold
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.detThresholdType='pixel_stdev'

# If true run detection on the template (image to convolve);
#                  if false run detection on the science image
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.detOnTemplate=True

# Mask planes that lead to an invalid detection.
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Minimum number of pixels in an acceptable Footprint
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.fpNpixMin=5

# Maximum number of pixels in an acceptable Footprint;
#                  too big and the subsequent convolutions become unwieldy
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.fpNpixMax=500

# If config.scaleByFwhm, grow the footprint based on
#                  the final kernelSize.  Each footprint will be
#                  2*fpGrowKernelScaling*kernelSize x
#                  2*fpGrowKernelScaling*kernelSize.  With the value
#                  of 1.0, the remaining pixels in each KernelCandiate
#                  after convolution by the basis functions will be
#                  equal to the kernel size itself.
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.fpGrowKernelScaling=1.0

# Growing radius (in pixels) for each raw detection
#                  footprint.  The smaller the faster; however the
#                  kernel sum does not converge if the stamp is too
#                  small; and the kernel is not constrained at all if
#                  the stamp is the size of the kernel.  The grown stamp
#                  is 2 * fpGrowPix pixels larger in each dimension.
#                  This is overridden by fpGrowKernelScaling if scaleByFwhm
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.fpGrowPix=30

# Scale fpGrowPix by input Fwhm?
config.imageDifference.subtract['al'].kernel['DF'].detectionConfig.scaleByFwhm=True

# type of statistic to use for grid points
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['al'].kernel['DF'].afwBackgroundConfig.weighting=True

# Use afw background subtraction instead of ip_diffim
config.imageDifference.subtract['al'].kernel['DF'].useAfwBackground=False

# Include terms (including kernel cross terms) for background in ip_diffim
config.imageDifference.subtract['al'].kernel['DF'].fitForBackground=False

# Type of basis set for PSF matching kernel.
config.imageDifference.subtract['al'].kernel['DF'].kernelBasisSet='delta-function'

# Number of rows/columns in the convolution kernel; should be odd-valued.
#                  Modified by kernelSizeFwhmScaling if scaleByFwhm = true
config.imageDifference.subtract['al'].kernel['DF'].kernelSize=21

# Scale kernelSize, alardGaussians by input Fwhm
config.imageDifference.subtract['al'].kernel['DF'].scaleByFwhm=True

# Multiplier of the largest AL Gaussian basis sigma to get the kernel bbox (pixel) size.
config.imageDifference.subtract['al'].kernel['DF'].kernelSizeFwhmScaling=6.0

# Minimum kernel bbox (pixel) size.
config.imageDifference.subtract['al'].kernel['DF'].kernelSizeMin=21

# Maximum kernel bbox (pixel) size.
config.imageDifference.subtract['al'].kernel['DF'].kernelSizeMax=35

# Type of spatial functions for kernel and background
config.imageDifference.subtract['al'].kernel['DF'].spatialModelType='chebyshev1'

# Spatial order of convolution kernel variation
config.imageDifference.subtract['al'].kernel['DF'].spatialKernelOrder=2

# Spatial order of differential background variation
config.imageDifference.subtract['al'].kernel['DF'].spatialBgOrder=1

# Size (rows) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['al'].kernel['DF'].sizeCellX=128

# Size (columns) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['al'].kernel['DF'].sizeCellY=128

# Number of KernelCandidates in each SpatialCell to use in the spatial fitting
config.imageDifference.subtract['al'].kernel['DF'].nStarPerCell=3

# Maximum number of iterations for rejecting bad KernelCandidates in spatial fitting
config.imageDifference.subtract['al'].kernel['DF'].maxSpatialIterations=3

# Use Pca to reduce the dimensionality of the kernel basis sets.
#                  This is particularly useful for delta-function kernels.
#                  Functionally, after all Cells have their raw kernels determined, we run
#                  a Pca on these Kernels, re-fit the Cells using the eigenKernels and then
#                  fit those for spatial variation using the same technique as for Alard-Lupton kernels.
#                  If this option is used, the first term will have no spatial variation and the
#                  kernel sum will be conserved.
config.imageDifference.subtract['al'].kernel['DF'].usePcaForSpatialKernel=True

# Subtract off the mean feature before doing the Pca
config.imageDifference.subtract['al'].kernel['DF'].subtractMeanForPca=True

# Number of principal components to use for Pca basis, including the
#                  mean kernel if requested.
config.imageDifference.subtract['al'].kernel['DF'].numPrincipalComponents=5

# Do sigma clipping on each raw kernel candidate
config.imageDifference.subtract['al'].kernel['DF'].singleKernelClipping=True

# Do sigma clipping on the ensemble of kernel sums
config.imageDifference.subtract['al'].kernel['DF'].kernelSumClipping=True

# Do sigma clipping after building the spatial model
config.imageDifference.subtract['al'].kernel['DF'].spatialKernelClipping=True

# Test for maximum condition number when inverting a kernel matrix.
#                  Anything above maxConditionNumber is not used and the candidate is set as BAD.
#                  Also used to truncate inverse matrix in estimateBiasedRisk.  However,
#                  if you are doing any deconvolution you will want to turn this off, or use
#                  a large maxConditionNumber
config.imageDifference.subtract['al'].kernel['DF'].checkConditionNumber=False

# Mask planes to ignore when calculating diffim statistics
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['al'].kernel['DF'].badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents average over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['al'].kernel['DF'].candidateResidualMeanMax=0.25

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents stddev over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['al'].kernel['DF'].candidateResidualStdMax=1.5

# Use the core of the footprint for the quality statistics, instead of the entire footprint.
#                  WARNING: if there is deconvolution we probably will need to turn this off
config.imageDifference.subtract['al'].kernel['DF'].useCoreStats=False

# Radius for calculation of stats in 'core' of KernelCandidate diffim.
#                  Total number of pixels used will be (2*radius)**2.
#                  This is used both for 'core' diffim quality as well as ranking of
#                  KernelCandidates by their total flux in this core
config.imageDifference.subtract['al'].kernel['DF'].candidateCoreRadius=3

# Maximum allowed sigma for outliers from kernel sum distribution.
#                  Used to reject variable objects from the kernel model
config.imageDifference.subtract['al'].kernel['DF'].maxKsumSigma=3.0

# Maximum condition number for a well conditioned matrix
config.imageDifference.subtract['al'].kernel['DF'].maxConditionNumber=5000000.0

# Use singular values (SVD) or eigen values (EIGENVALUE) to determine condition number
config.imageDifference.subtract['al'].kernel['DF'].conditionNumberType='EIGENVALUE'

# Maximum condition number for a well conditioned spatial matrix
config.imageDifference.subtract['al'].kernel['DF'].maxSpatialConditionNumber=10000000000.0

# Remake KernelCandidate using better variance estimate after first pass?
#                  Primarily useful when convolving a single-depth image, otherwise not necessary.
config.imageDifference.subtract['al'].kernel['DF'].iterateSingleKernel=False

# Use constant variance weighting in single kernel fitting?
#                  In some cases this is better for bright star residuals.
config.imageDifference.subtract['al'].kernel['DF'].constantVarianceWeighting=True

# Calculate kernel and background uncertainties for each kernel candidate?
#                  This comes from the inverse of the covariance matrix.
#                  Warning: regularization can cause problems for this step.
config.imageDifference.subtract['al'].kernel['DF'].calculateKernelUncertainty=False

# Use Bayesian Information Criterion to select the number of bases going into the kernel
config.imageDifference.subtract['al'].kernel['DF'].useBicForKernelBasis=False

# Use regularization to smooth the delta function kernels
config.imageDifference.subtract['al'].kernel['DF'].useRegularization=True

# Type of regularization.
config.imageDifference.subtract['al'].kernel['DF'].regularizationType='centralDifference'

# Type of stencil to approximate central derivative (for centralDifference only)
config.imageDifference.subtract['al'].kernel['DF'].centralRegularizationStencil=9

# Array showing which order derivatives to penalize (for forwardDifference only)
config.imageDifference.subtract['al'].kernel['DF'].forwardRegularizationOrders=[1, 2]

# Value of the penalty for kernel border pixels
config.imageDifference.subtract['al'].kernel['DF'].regularizationBorderPenalty=3.0

# How to choose the value of the regularization strength
config.imageDifference.subtract['al'].kernel['DF'].lambdaType='absolute'

# Value used for absolute determinations of regularization strength
config.imageDifference.subtract['al'].kernel['DF'].lambdaValue=0.2

# Fraction of the default lambda strength (N.R. 18.5.8) to use.  1e-4 or 1e-5
config.imageDifference.subtract['al'].kernel['DF'].lambdaScaling=0.0001

# If a scan through lambda is needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  use log or linear steps
config.imageDifference.subtract['al'].kernel['DF'].lambdaStepType='log'

# If scan through lambda needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  start at this value.  If lambdaStepType = log:linear, suggest -1:0.1
config.imageDifference.subtract['al'].kernel['DF'].lambdaMin=-1.0

# If scan through lambda needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  stop at this value.  If lambdaStepType = log:linear, suggest 2:100
config.imageDifference.subtract['al'].kernel['DF'].lambdaMax=2.0

# If scan through lambda needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  step in these increments.  If lambdaStepType = log:linear, suggest 0.1:0.1
config.imageDifference.subtract['al'].kernel['DF'].lambdaStep=0.1

config.imageDifference.subtract['al'].kernel.name='AL'
# detected sources with fewer than the specified number of pixels will be ignored
config.imageDifference.subtract['al'].selectDetection.minPixels=1

# Pixels should be grown as isotropically as possible (slower)
config.imageDifference.subtract['al'].selectDetection.isotropicGrow=False

# Grow all footprints at the same time? This allows disconnected footprints to merge.
config.imageDifference.subtract['al'].selectDetection.combinedGrow=True

# Grow detections by nSigmaToGrow * [PSF RMS width]; if 0 then do not grow
config.imageDifference.subtract['al'].selectDetection.nSigmaToGrow=2.4

# Grow detections to set the image mask bits, but return the original (not-grown) footprints
config.imageDifference.subtract['al'].selectDetection.returnOriginalFootprints=False

# Threshold for footprints; exact meaning and units depend on thresholdType.
config.imageDifference.subtract['al'].selectDetection.thresholdValue=10.0

# Include threshold relative to thresholdValue
config.imageDifference.subtract['al'].selectDetection.includeThresholdMultiplier=1.0

# specifies the desired flavor of Threshold
config.imageDifference.subtract['al'].selectDetection.thresholdType='stdev'

# specifies whether to detect positive, or negative sources, or both
config.imageDifference.subtract['al'].selectDetection.thresholdPolarity='positive'

# Fiddle factor to add to the background; debugging only
config.imageDifference.subtract['al'].selectDetection.adjustBackground=0.0

# Estimate the background again after final source detection?
config.imageDifference.subtract['al'].selectDetection.reEstimateBackground=False

# type of statistic to use for grid points
config.imageDifference.subtract['al'].selectDetection.background.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['al'].selectDetection.background.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['al'].selectDetection.background.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].selectDetection.background.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].selectDetection.background.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['al'].selectDetection.background.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['al'].selectDetection.background.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['al'].selectDetection.background.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['al'].selectDetection.background.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.background.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.background.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.background.weighting=True

# type of statistic to use for grid points
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.binSize=64

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.tempLocalBackground.weighting=True

# Enable temporary local background subtraction? (see tempLocalBackground)
config.imageDifference.subtract['al'].selectDetection.doTempLocalBackground=True

# type of statistic to use for grid points
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.binSize=512

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.ignoredPixelMask=['BAD', 'EDGE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['al'].selectDetection.tempWideBackground.weighting=True

# Do temporary wide (large-scale) background subtraction before footprint detection?
config.imageDifference.subtract['al'].selectDetection.doTempWideBackground=False

# The maximum number of peaks in a Footprint before trying to replace its peaks using the temporary local background
config.imageDifference.subtract['al'].selectDetection.nPeaksMaxSimple=1

# Multiple of PSF RMS size to use for convolution kernel bounding box size; note that this is not a half-size. The size will be rounded up to the nearest odd integer
config.imageDifference.subtract['al'].selectDetection.nSigmaForKernel=7.0

# Mask planes to ignore when calculating statistics of image (for thresholdType=stdev)
config.imageDifference.subtract['al'].selectDetection.statsMask=['BAD', 'SAT', 'EDGE', 'NO_DATA']

# the name of the centroiding algorithm used to set source x,y
config.imageDifference.subtract['al'].selectMeasurement.slots.centroid='base_SdssCentroid'

# the name of the algorithm used to set source moments parameters
config.imageDifference.subtract['al'].selectMeasurement.slots.shape='base_SdssShape'

# the name of the algorithm used to set PSF moments parameters
config.imageDifference.subtract['al'].selectMeasurement.slots.psfShape='base_SdssShape_psf'

# the name of the algorithm used to set the source aperture instFlux slot
config.imageDifference.subtract['al'].selectMeasurement.slots.apFlux=None

# the name of the algorithm used to set the source model instFlux slot
config.imageDifference.subtract['al'].selectMeasurement.slots.modelFlux=None

# the name of the algorithm used to set the source psf instFlux slot
config.imageDifference.subtract['al'].selectMeasurement.slots.psfFlux='base_PsfFlux'

# the name of the algorithm used to set the source Gaussian instFlux slot
config.imageDifference.subtract['al'].selectMeasurement.slots.gaussianFlux='base_GaussianFlux'

# the name of the instFlux measurement algorithm used for calibration
config.imageDifference.subtract['al'].selectMeasurement.slots.calibFlux=None

# When measuring, replace other detected footprints with noise?
config.imageDifference.subtract['al'].selectMeasurement.doReplaceWithNoise=True

# How to choose mean and variance of the Gaussian noise we generate?
config.imageDifference.subtract['al'].selectMeasurement.noiseReplacer.noiseSource='measure'

# Add ann offset to the generated noise.
config.imageDifference.subtract['al'].selectMeasurement.noiseReplacer.noiseOffset=0.0

# The seed multiplier value to use for random number generation:
# >= 1: set the seed deterministically based on exposureId
# 0: fall back to the afw.math.Random default constructor (which uses a seed value of 1)
config.imageDifference.subtract['al'].selectMeasurement.noiseReplacer.noiseSeedMultiplier=1

# Prefix to give undeblended plugins
config.imageDifference.subtract['al'].selectMeasurement.undeblendedPrefix='undeblended_'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_FPPosition'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Jacobian'].doMeasure=True

# Nominal pixel size (arcsec)
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Jacobian'].pixelScale=0.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['base_SkyCoord'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].doMeasure=True

# Attempte dipole fit of all diaSources (otherwise just the ones consisting of overlapping
#         positive and negative footprints)
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].fitAllDiaSources=0.0

# Assume dipole is not separated by more than maxSeparation * psfSigma
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxSeparation=5.0

# Relative weighting of pre-subtraction images (higher -> greater influence of pre-sub.
#         images on fit)
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].relWeight=0.5

# Fit tolerance
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].tolerance=1e-07

# Set whether and how to fit for linear gradient in pre-sub. images. Possible values:0: do not fit background at all1 (default): pre-fit the background using linear least squares and then do not fit it as partof the dipole fitting optimization2: pre-fit the background using linear least squares (as in 1), and use the parameterestimates from that fit as starting parameters for an integrated re-fit of the background
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].fitBackground=1

# Include parameters to fit for negative values (flux, gradient) separately from pos.
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].fitSeparateNegParams=False

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxFluxRatio=0.65

# Maximum Chi2/DoF significance of fit to be considered a dipole.
#         Default value means "Choose a chi2DoF corresponding to a significance level of at most 0.05"
#         (note this is actually a significance, not a chi2 value).
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxChi2DoF=0.05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].doMeasure=True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].maxFluxRatio=0.65

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.subtract['al'].selectMeasurement.plugins.names=['base_PsfFlux', 'base_SkyCoord', 'base_SdssShape', 'base_GaussianFlux', 'base_SdssCentroid', 'base_PixelFlags']
# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_FPPosition'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Jacobian'].doMeasure=True

# Nominal pixel size (arcsec)
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Jacobian'].pixelScale=0.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['base_SkyCoord'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].doMeasure=True

# Attempte dipole fit of all diaSources (otherwise just the ones consisting of overlapping
#         positive and negative footprints)
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].fitAllDiaSources=0.0

# Assume dipole is not separated by more than maxSeparation * psfSigma
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxSeparation=5.0

# Relative weighting of pre-subtraction images (higher -> greater influence of pre-sub.
#         images on fit)
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].relWeight=0.5

# Fit tolerance
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].tolerance=1e-07

# Set whether and how to fit for linear gradient in pre-sub. images. Possible values:0: do not fit background at all1 (default): pre-fit the background using linear least squares and then do not fit it as partof the dipole fitting optimization2: pre-fit the background using linear least squares (as in 1), and use the parameterestimates from that fit as starting parameters for an integrated re-fit of the background
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].fitBackground=1

# Include parameters to fit for negative values (flux, gradient) separately from pos.
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].fitSeparateNegParams=False

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxFluxRatio=0.65

# Maximum Chi2/DoF significance of fit to be considered a dipole.
#         Default value means "Choose a chi2DoF corresponding to a significance level of at most 0.05"
#         (note this is actually a significance, not a chi2 value).
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxChi2DoF=0.05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].doMeasure=True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].maxFluxRatio=0.65

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.subtract['al'].selectMeasurement.undeblended.names=[]
# Warping kernel
config.imageDifference.subtract['zogy'].kernel['AL'].warpingConfig.warpingKernelName='lanczos3'

# Warping kernel for mask (use ``warpingKernelName`` if '')
config.imageDifference.subtract['zogy'].kernel['AL'].warpingConfig.maskWarpingKernelName='bilinear'

# ``interpLength`` argument to `lsst.afw.math.warpExposure`
config.imageDifference.subtract['zogy'].kernel['AL'].warpingConfig.interpLength=10

# ``cacheSize`` argument to `lsst.afw.math.SeparableKernel.computeCache`
config.imageDifference.subtract['zogy'].kernel['AL'].warpingConfig.cacheSize=1000000

# mask bits to grow to full width of image/variance kernel,
config.imageDifference.subtract['zogy'].kernel['AL'].warpingConfig.growFullMask=16

# Value of footprint detection threshold
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.detThreshold=10.0

# Type of detection threshold
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.detThresholdType='pixel_stdev'

# If true run detection on the template (image to convolve);
#                  if false run detection on the science image
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.detOnTemplate=True

# Mask planes that lead to an invalid detection.
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Minimum number of pixels in an acceptable Footprint
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.fpNpixMin=5

# Maximum number of pixels in an acceptable Footprint;
#                  too big and the subsequent convolutions become unwieldy
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.fpNpixMax=500

# If config.scaleByFwhm, grow the footprint based on
#                  the final kernelSize.  Each footprint will be
#                  2*fpGrowKernelScaling*kernelSize x
#                  2*fpGrowKernelScaling*kernelSize.  With the value
#                  of 1.0, the remaining pixels in each KernelCandiate
#                  after convolution by the basis functions will be
#                  equal to the kernel size itself.
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.fpGrowKernelScaling=1.0

# Growing radius (in pixels) for each raw detection
#                  footprint.  The smaller the faster; however the
#                  kernel sum does not converge if the stamp is too
#                  small; and the kernel is not constrained at all if
#                  the stamp is the size of the kernel.  The grown stamp
#                  is 2 * fpGrowPix pixels larger in each dimension.
#                  This is overridden by fpGrowKernelScaling if scaleByFwhm
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.fpGrowPix=30

# Scale fpGrowPix by input Fwhm?
config.imageDifference.subtract['zogy'].kernel['AL'].detectionConfig.scaleByFwhm=True

# type of statistic to use for grid points
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].kernel['AL'].afwBackgroundConfig.weighting=True

# Use afw background subtraction instead of ip_diffim
config.imageDifference.subtract['zogy'].kernel['AL'].useAfwBackground=False

# Include terms (including kernel cross terms) for background in ip_diffim
config.imageDifference.subtract['zogy'].kernel['AL'].fitForBackground=False

# Type of basis set for PSF matching kernel.
config.imageDifference.subtract['zogy'].kernel['AL'].kernelBasisSet='alard-lupton'

# Number of rows/columns in the convolution kernel; should be odd-valued.
#                  Modified by kernelSizeFwhmScaling if scaleByFwhm = true
config.imageDifference.subtract['zogy'].kernel['AL'].kernelSize=21

# Scale kernelSize, alardGaussians by input Fwhm
config.imageDifference.subtract['zogy'].kernel['AL'].scaleByFwhm=True

# Multiplier of the largest AL Gaussian basis sigma to get the kernel bbox (pixel) size.
config.imageDifference.subtract['zogy'].kernel['AL'].kernelSizeFwhmScaling=6.0

# Minimum kernel bbox (pixel) size.
config.imageDifference.subtract['zogy'].kernel['AL'].kernelSizeMin=21

# Maximum kernel bbox (pixel) size.
config.imageDifference.subtract['zogy'].kernel['AL'].kernelSizeMax=35

# Type of spatial functions for kernel and background
config.imageDifference.subtract['zogy'].kernel['AL'].spatialModelType='chebyshev1'

# Spatial order of convolution kernel variation
config.imageDifference.subtract['zogy'].kernel['AL'].spatialKernelOrder=2

# Spatial order of differential background variation
config.imageDifference.subtract['zogy'].kernel['AL'].spatialBgOrder=1

# Size (rows) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['zogy'].kernel['AL'].sizeCellX=128

# Size (columns) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['zogy'].kernel['AL'].sizeCellY=128

# Number of KernelCandidates in each SpatialCell to use in the spatial fitting
config.imageDifference.subtract['zogy'].kernel['AL'].nStarPerCell=3

# Maximum number of iterations for rejecting bad KernelCandidates in spatial fitting
config.imageDifference.subtract['zogy'].kernel['AL'].maxSpatialIterations=3

# Use Pca to reduce the dimensionality of the kernel basis sets.
#                  This is particularly useful for delta-function kernels.
#                  Functionally, after all Cells have their raw kernels determined, we run
#                  a Pca on these Kernels, re-fit the Cells using the eigenKernels and then
#                  fit those for spatial variation using the same technique as for Alard-Lupton kernels.
#                  If this option is used, the first term will have no spatial variation and the
#                  kernel sum will be conserved.
config.imageDifference.subtract['zogy'].kernel['AL'].usePcaForSpatialKernel=False

# Subtract off the mean feature before doing the Pca
config.imageDifference.subtract['zogy'].kernel['AL'].subtractMeanForPca=True

# Number of principal components to use for Pca basis, including the
#                  mean kernel if requested.
config.imageDifference.subtract['zogy'].kernel['AL'].numPrincipalComponents=5

# Do sigma clipping on each raw kernel candidate
config.imageDifference.subtract['zogy'].kernel['AL'].singleKernelClipping=True

# Do sigma clipping on the ensemble of kernel sums
config.imageDifference.subtract['zogy'].kernel['AL'].kernelSumClipping=True

# Do sigma clipping after building the spatial model
config.imageDifference.subtract['zogy'].kernel['AL'].spatialKernelClipping=True

# Test for maximum condition number when inverting a kernel matrix.
#                  Anything above maxConditionNumber is not used and the candidate is set as BAD.
#                  Also used to truncate inverse matrix in estimateBiasedRisk.  However,
#                  if you are doing any deconvolution you will want to turn this off, or use
#                  a large maxConditionNumber
config.imageDifference.subtract['zogy'].kernel['AL'].checkConditionNumber=False

# Mask planes to ignore when calculating diffim statistics
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['zogy'].kernel['AL'].badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents average over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['zogy'].kernel['AL'].candidateResidualMeanMax=0.25

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents stddev over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['zogy'].kernel['AL'].candidateResidualStdMax=1.5

# Use the core of the footprint for the quality statistics, instead of the entire footprint.
#                  WARNING: if there is deconvolution we probably will need to turn this off
config.imageDifference.subtract['zogy'].kernel['AL'].useCoreStats=False

# Radius for calculation of stats in 'core' of KernelCandidate diffim.
#                  Total number of pixels used will be (2*radius)**2.
#                  This is used both for 'core' diffim quality as well as ranking of
#                  KernelCandidates by their total flux in this core
config.imageDifference.subtract['zogy'].kernel['AL'].candidateCoreRadius=3

# Maximum allowed sigma for outliers from kernel sum distribution.
#                  Used to reject variable objects from the kernel model
config.imageDifference.subtract['zogy'].kernel['AL'].maxKsumSigma=3.0

# Maximum condition number for a well conditioned matrix
config.imageDifference.subtract['zogy'].kernel['AL'].maxConditionNumber=50000000.0

# Use singular values (SVD) or eigen values (EIGENVALUE) to determine condition number
config.imageDifference.subtract['zogy'].kernel['AL'].conditionNumberType='EIGENVALUE'

# Maximum condition number for a well conditioned spatial matrix
config.imageDifference.subtract['zogy'].kernel['AL'].maxSpatialConditionNumber=10000000000.0

# Remake KernelCandidate using better variance estimate after first pass?
#                  Primarily useful when convolving a single-depth image, otherwise not necessary.
config.imageDifference.subtract['zogy'].kernel['AL'].iterateSingleKernel=False

# Use constant variance weighting in single kernel fitting?
#                  In some cases this is better for bright star residuals.
config.imageDifference.subtract['zogy'].kernel['AL'].constantVarianceWeighting=True

# Calculate kernel and background uncertainties for each kernel candidate?
#                  This comes from the inverse of the covariance matrix.
#                  Warning: regularization can cause problems for this step.
config.imageDifference.subtract['zogy'].kernel['AL'].calculateKernelUncertainty=False

# Use Bayesian Information Criterion to select the number of bases going into the kernel
config.imageDifference.subtract['zogy'].kernel['AL'].useBicForKernelBasis=False

# Number of base Gaussians in alard-lupton kernel basis function generation.
config.imageDifference.subtract['zogy'].kernel['AL'].alardNGauss=3

# Polynomial order of spatial modification of base Gaussians. List length must be `alardNGauss`.
config.imageDifference.subtract['zogy'].kernel['AL'].alardDegGauss=[4, 2, 2]

# Default sigma values in pixels of base Gaussians. List length must be `alardNGauss`.
config.imageDifference.subtract['zogy'].kernel['AL'].alardSigGauss=[0.7, 1.5, 3.0]

# Used if `scaleByFwhm==True`, scaling multiplier of base Gaussian sigmas for automated sigma determination
config.imageDifference.subtract['zogy'].kernel['AL'].alardGaussBeta=2.0

# Used if `scaleByFwhm==True`, minimum sigma (pixels) for base Gaussians
config.imageDifference.subtract['zogy'].kernel['AL'].alardMinSig=0.7

# Used if `scaleByFwhm==True`, degree of spatial modification of ALL base Gaussians in AL basis during deconvolution
config.imageDifference.subtract['zogy'].kernel['AL'].alardDegGaussDeconv=3

# Used if `scaleByFwhm==True`, minimum sigma (pixels) for base Gaussians during deconvolution; make smaller than `alardMinSig` as this is only indirectly used
config.imageDifference.subtract['zogy'].kernel['AL'].alardMinSigDeconv=0.4

# Used if `scaleByFwhm==True`, number of base Gaussians in AL basis during deconvolution
config.imageDifference.subtract['zogy'].kernel['AL'].alardNGaussDeconv=3

# Warping kernel
config.imageDifference.subtract['zogy'].kernel['DF'].warpingConfig.warpingKernelName='lanczos3'

# Warping kernel for mask (use ``warpingKernelName`` if '')
config.imageDifference.subtract['zogy'].kernel['DF'].warpingConfig.maskWarpingKernelName='bilinear'

# ``interpLength`` argument to `lsst.afw.math.warpExposure`
config.imageDifference.subtract['zogy'].kernel['DF'].warpingConfig.interpLength=10

# ``cacheSize`` argument to `lsst.afw.math.SeparableKernel.computeCache`
config.imageDifference.subtract['zogy'].kernel['DF'].warpingConfig.cacheSize=1000000

# mask bits to grow to full width of image/variance kernel,
config.imageDifference.subtract['zogy'].kernel['DF'].warpingConfig.growFullMask=16

# Value of footprint detection threshold
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.detThreshold=10.0

# Type of detection threshold
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.detThresholdType='pixel_stdev'

# If true run detection on the template (image to convolve);
#                  if false run detection on the science image
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.detOnTemplate=True

# Mask planes that lead to an invalid detection.
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Minimum number of pixels in an acceptable Footprint
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.fpNpixMin=5

# Maximum number of pixels in an acceptable Footprint;
#                  too big and the subsequent convolutions become unwieldy
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.fpNpixMax=500

# If config.scaleByFwhm, grow the footprint based on
#                  the final kernelSize.  Each footprint will be
#                  2*fpGrowKernelScaling*kernelSize x
#                  2*fpGrowKernelScaling*kernelSize.  With the value
#                  of 1.0, the remaining pixels in each KernelCandiate
#                  after convolution by the basis functions will be
#                  equal to the kernel size itself.
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.fpGrowKernelScaling=1.0

# Growing radius (in pixels) for each raw detection
#                  footprint.  The smaller the faster; however the
#                  kernel sum does not converge if the stamp is too
#                  small; and the kernel is not constrained at all if
#                  the stamp is the size of the kernel.  The grown stamp
#                  is 2 * fpGrowPix pixels larger in each dimension.
#                  This is overridden by fpGrowKernelScaling if scaleByFwhm
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.fpGrowPix=30

# Scale fpGrowPix by input Fwhm?
config.imageDifference.subtract['zogy'].kernel['DF'].detectionConfig.scaleByFwhm=True

# type of statistic to use for grid points
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].kernel['DF'].afwBackgroundConfig.weighting=True

# Use afw background subtraction instead of ip_diffim
config.imageDifference.subtract['zogy'].kernel['DF'].useAfwBackground=False

# Include terms (including kernel cross terms) for background in ip_diffim
config.imageDifference.subtract['zogy'].kernel['DF'].fitForBackground=False

# Type of basis set for PSF matching kernel.
config.imageDifference.subtract['zogy'].kernel['DF'].kernelBasisSet='delta-function'

# Number of rows/columns in the convolution kernel; should be odd-valued.
#                  Modified by kernelSizeFwhmScaling if scaleByFwhm = true
config.imageDifference.subtract['zogy'].kernel['DF'].kernelSize=21

# Scale kernelSize, alardGaussians by input Fwhm
config.imageDifference.subtract['zogy'].kernel['DF'].scaleByFwhm=True

# Multiplier of the largest AL Gaussian basis sigma to get the kernel bbox (pixel) size.
config.imageDifference.subtract['zogy'].kernel['DF'].kernelSizeFwhmScaling=6.0

# Minimum kernel bbox (pixel) size.
config.imageDifference.subtract['zogy'].kernel['DF'].kernelSizeMin=21

# Maximum kernel bbox (pixel) size.
config.imageDifference.subtract['zogy'].kernel['DF'].kernelSizeMax=35

# Type of spatial functions for kernel and background
config.imageDifference.subtract['zogy'].kernel['DF'].spatialModelType='chebyshev1'

# Spatial order of convolution kernel variation
config.imageDifference.subtract['zogy'].kernel['DF'].spatialKernelOrder=2

# Spatial order of differential background variation
config.imageDifference.subtract['zogy'].kernel['DF'].spatialBgOrder=1

# Size (rows) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['zogy'].kernel['DF'].sizeCellX=128

# Size (columns) in pixels of each SpatialCell for spatial modeling
config.imageDifference.subtract['zogy'].kernel['DF'].sizeCellY=128

# Number of KernelCandidates in each SpatialCell to use in the spatial fitting
config.imageDifference.subtract['zogy'].kernel['DF'].nStarPerCell=3

# Maximum number of iterations for rejecting bad KernelCandidates in spatial fitting
config.imageDifference.subtract['zogy'].kernel['DF'].maxSpatialIterations=3

# Use Pca to reduce the dimensionality of the kernel basis sets.
#                  This is particularly useful for delta-function kernels.
#                  Functionally, after all Cells have their raw kernels determined, we run
#                  a Pca on these Kernels, re-fit the Cells using the eigenKernels and then
#                  fit those for spatial variation using the same technique as for Alard-Lupton kernels.
#                  If this option is used, the first term will have no spatial variation and the
#                  kernel sum will be conserved.
config.imageDifference.subtract['zogy'].kernel['DF'].usePcaForSpatialKernel=True

# Subtract off the mean feature before doing the Pca
config.imageDifference.subtract['zogy'].kernel['DF'].subtractMeanForPca=True

# Number of principal components to use for Pca basis, including the
#                  mean kernel if requested.
config.imageDifference.subtract['zogy'].kernel['DF'].numPrincipalComponents=5

# Do sigma clipping on each raw kernel candidate
config.imageDifference.subtract['zogy'].kernel['DF'].singleKernelClipping=True

# Do sigma clipping on the ensemble of kernel sums
config.imageDifference.subtract['zogy'].kernel['DF'].kernelSumClipping=True

# Do sigma clipping after building the spatial model
config.imageDifference.subtract['zogy'].kernel['DF'].spatialKernelClipping=True

# Test for maximum condition number when inverting a kernel matrix.
#                  Anything above maxConditionNumber is not used and the candidate is set as BAD.
#                  Also used to truncate inverse matrix in estimateBiasedRisk.  However,
#                  if you are doing any deconvolution you will want to turn this off, or use
#                  a large maxConditionNumber
config.imageDifference.subtract['zogy'].kernel['DF'].checkConditionNumber=False

# Mask planes to ignore when calculating diffim statistics
#                  Options: NO_DATA EDGE SAT BAD CR INTRP
config.imageDifference.subtract['zogy'].kernel['DF'].badMaskPlanes=['NO_DATA', 'EDGE', 'SAT']

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents average over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['zogy'].kernel['DF'].candidateResidualMeanMax=0.25

# Rejects KernelCandidates yielding bad difference image quality.
#                  Used by BuildSingleKernelVisitor, AssessSpatialKernelVisitor.
#                  Represents stddev over pixels of (image/sqrt(variance)).
config.imageDifference.subtract['zogy'].kernel['DF'].candidateResidualStdMax=1.5

# Use the core of the footprint for the quality statistics, instead of the entire footprint.
#                  WARNING: if there is deconvolution we probably will need to turn this off
config.imageDifference.subtract['zogy'].kernel['DF'].useCoreStats=False

# Radius for calculation of stats in 'core' of KernelCandidate diffim.
#                  Total number of pixels used will be (2*radius)**2.
#                  This is used both for 'core' diffim quality as well as ranking of
#                  KernelCandidates by their total flux in this core
config.imageDifference.subtract['zogy'].kernel['DF'].candidateCoreRadius=3

# Maximum allowed sigma for outliers from kernel sum distribution.
#                  Used to reject variable objects from the kernel model
config.imageDifference.subtract['zogy'].kernel['DF'].maxKsumSigma=3.0

# Maximum condition number for a well conditioned matrix
config.imageDifference.subtract['zogy'].kernel['DF'].maxConditionNumber=5000000.0

# Use singular values (SVD) or eigen values (EIGENVALUE) to determine condition number
config.imageDifference.subtract['zogy'].kernel['DF'].conditionNumberType='EIGENVALUE'

# Maximum condition number for a well conditioned spatial matrix
config.imageDifference.subtract['zogy'].kernel['DF'].maxSpatialConditionNumber=10000000000.0

# Remake KernelCandidate using better variance estimate after first pass?
#                  Primarily useful when convolving a single-depth image, otherwise not necessary.
config.imageDifference.subtract['zogy'].kernel['DF'].iterateSingleKernel=False

# Use constant variance weighting in single kernel fitting?
#                  In some cases this is better for bright star residuals.
config.imageDifference.subtract['zogy'].kernel['DF'].constantVarianceWeighting=True

# Calculate kernel and background uncertainties for each kernel candidate?
#                  This comes from the inverse of the covariance matrix.
#                  Warning: regularization can cause problems for this step.
config.imageDifference.subtract['zogy'].kernel['DF'].calculateKernelUncertainty=False

# Use Bayesian Information Criterion to select the number of bases going into the kernel
config.imageDifference.subtract['zogy'].kernel['DF'].useBicForKernelBasis=False

# Use regularization to smooth the delta function kernels
config.imageDifference.subtract['zogy'].kernel['DF'].useRegularization=True

# Type of regularization.
config.imageDifference.subtract['zogy'].kernel['DF'].regularizationType='centralDifference'

# Type of stencil to approximate central derivative (for centralDifference only)
config.imageDifference.subtract['zogy'].kernel['DF'].centralRegularizationStencil=9

# Array showing which order derivatives to penalize (for forwardDifference only)
config.imageDifference.subtract['zogy'].kernel['DF'].forwardRegularizationOrders=[1, 2]

# Value of the penalty for kernel border pixels
config.imageDifference.subtract['zogy'].kernel['DF'].regularizationBorderPenalty=3.0

# How to choose the value of the regularization strength
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaType='absolute'

# Value used for absolute determinations of regularization strength
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaValue=0.2

# Fraction of the default lambda strength (N.R. 18.5.8) to use.  1e-4 or 1e-5
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaScaling=0.0001

# If a scan through lambda is needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  use log or linear steps
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaStepType='log'

# If scan through lambda needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  start at this value.  If lambdaStepType = log:linear, suggest -1:0.1
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaMin=-1.0

# If scan through lambda needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  stop at this value.  If lambdaStepType = log:linear, suggest 2:100
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaMax=2.0

# If scan through lambda needed (minimizeBiasedRisk, minimizeUnbiasedRisk),
#                  step in these increments.  If lambdaStepType = log:linear, suggest 0.1:0.1
config.imageDifference.subtract['zogy'].kernel['DF'].lambdaStep=0.1

config.imageDifference.subtract['zogy'].kernel.name='AL'
# detected sources with fewer than the specified number of pixels will be ignored
config.imageDifference.subtract['zogy'].selectDetection.minPixels=1

# Pixels should be grown as isotropically as possible (slower)
config.imageDifference.subtract['zogy'].selectDetection.isotropicGrow=False

# Grow all footprints at the same time? This allows disconnected footprints to merge.
config.imageDifference.subtract['zogy'].selectDetection.combinedGrow=True

# Grow detections by nSigmaToGrow * [PSF RMS width]; if 0 then do not grow
config.imageDifference.subtract['zogy'].selectDetection.nSigmaToGrow=2.4

# Grow detections to set the image mask bits, but return the original (not-grown) footprints
config.imageDifference.subtract['zogy'].selectDetection.returnOriginalFootprints=False

# Threshold for footprints; exact meaning and units depend on thresholdType.
config.imageDifference.subtract['zogy'].selectDetection.thresholdValue=5.0

# Include threshold relative to thresholdValue
config.imageDifference.subtract['zogy'].selectDetection.includeThresholdMultiplier=1.0

# specifies the desired flavor of Threshold
config.imageDifference.subtract['zogy'].selectDetection.thresholdType='stdev'

# specifies whether to detect positive, or negative sources, or both
config.imageDifference.subtract['zogy'].selectDetection.thresholdPolarity='positive'

# Fiddle factor to add to the background; debugging only
config.imageDifference.subtract['zogy'].selectDetection.adjustBackground=0.0

# Estimate the background again after final source detection?
config.imageDifference.subtract['zogy'].selectDetection.reEstimateBackground=True

# type of statistic to use for grid points
config.imageDifference.subtract['zogy'].selectDetection.background.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['zogy'].selectDetection.background.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['zogy'].selectDetection.background.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].selectDetection.background.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].selectDetection.background.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['zogy'].selectDetection.background.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['zogy'].selectDetection.background.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['zogy'].selectDetection.background.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['zogy'].selectDetection.background.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.background.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.background.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.background.weighting=True

# type of statistic to use for grid points
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.binSize=64

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.tempLocalBackground.weighting=True

# Enable temporary local background subtraction? (see tempLocalBackground)
config.imageDifference.subtract['zogy'].selectDetection.doTempLocalBackground=True

# type of statistic to use for grid points
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.binSize=512

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.ignoredPixelMask=['BAD', 'EDGE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.subtract['zogy'].selectDetection.tempWideBackground.weighting=True

# Do temporary wide (large-scale) background subtraction before footprint detection?
config.imageDifference.subtract['zogy'].selectDetection.doTempWideBackground=False

# The maximum number of peaks in a Footprint before trying to replace its peaks using the temporary local background
config.imageDifference.subtract['zogy'].selectDetection.nPeaksMaxSimple=1

# Multiple of PSF RMS size to use for convolution kernel bounding box size; note that this is not a half-size. The size will be rounded up to the nearest odd integer
config.imageDifference.subtract['zogy'].selectDetection.nSigmaForKernel=7.0

# Mask planes to ignore when calculating statistics of image (for thresholdType=stdev)
config.imageDifference.subtract['zogy'].selectDetection.statsMask=['BAD', 'SAT', 'EDGE', 'NO_DATA']

# the name of the centroiding algorithm used to set source x,y
config.imageDifference.subtract['zogy'].selectMeasurement.slots.centroid='base_SdssCentroid'

# the name of the algorithm used to set source moments parameters
config.imageDifference.subtract['zogy'].selectMeasurement.slots.shape='base_SdssShape'

# the name of the algorithm used to set PSF moments parameters
config.imageDifference.subtract['zogy'].selectMeasurement.slots.psfShape='base_SdssShape_psf'

# the name of the algorithm used to set the source aperture instFlux slot
config.imageDifference.subtract['zogy'].selectMeasurement.slots.apFlux='base_CircularApertureFlux_12_0'

# the name of the algorithm used to set the source model instFlux slot
config.imageDifference.subtract['zogy'].selectMeasurement.slots.modelFlux='base_GaussianFlux'

# the name of the algorithm used to set the source psf instFlux slot
config.imageDifference.subtract['zogy'].selectMeasurement.slots.psfFlux='base_PsfFlux'

# the name of the algorithm used to set the source Gaussian instFlux slot
config.imageDifference.subtract['zogy'].selectMeasurement.slots.gaussianFlux='base_GaussianFlux'

# the name of the instFlux measurement algorithm used for calibration
config.imageDifference.subtract['zogy'].selectMeasurement.slots.calibFlux='base_CircularApertureFlux_12_0'

# When measuring, replace other detected footprints with noise?
config.imageDifference.subtract['zogy'].selectMeasurement.doReplaceWithNoise=True

# How to choose mean and variance of the Gaussian noise we generate?
config.imageDifference.subtract['zogy'].selectMeasurement.noiseReplacer.noiseSource='measure'

# Add ann offset to the generated noise.
config.imageDifference.subtract['zogy'].selectMeasurement.noiseReplacer.noiseOffset=0.0

# The seed multiplier value to use for random number generation:
# >= 1: set the seed deterministically based on exposureId
# 0: fall back to the afw.math.Random default constructor (which uses a seed value of 1)
config.imageDifference.subtract['zogy'].selectMeasurement.noiseReplacer.noiseSeedMultiplier=1

# Prefix to give undeblended plugins
config.imageDifference.subtract['zogy'].selectMeasurement.undeblendedPrefix='undeblended_'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_FPPosition'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Jacobian'].doMeasure=True

# Nominal pixel size (arcsec)
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Jacobian'].pixelScale=0.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['base_SkyCoord'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].doMeasure=True

# Attempte dipole fit of all diaSources (otherwise just the ones consisting of overlapping
#         positive and negative footprints)
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].fitAllDiaSources=0.0

# Assume dipole is not separated by more than maxSeparation * psfSigma
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxSeparation=5.0

# Relative weighting of pre-subtraction images (higher -> greater influence of pre-sub.
#         images on fit)
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].relWeight=0.5

# Fit tolerance
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].tolerance=1e-07

# Set whether and how to fit for linear gradient in pre-sub. images. Possible values:0: do not fit background at all1 (default): pre-fit the background using linear least squares and then do not fit it as partof the dipole fitting optimization2: pre-fit the background using linear least squares (as in 1), and use the parameterestimates from that fit as starting parameters for an integrated re-fit of the background
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].fitBackground=1

# Include parameters to fit for negative values (flux, gradient) separately from pos.
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].fitSeparateNegParams=False

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxFluxRatio=0.65

# Maximum Chi2/DoF significance of fit to be considered a dipole.
#         Default value means "Choose a chi2DoF corresponding to a significance level of at most 0.05"
#         (note this is actually a significance, not a chi2 value).
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxChi2DoF=0.05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].doMeasure=True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].maxFluxRatio=0.65

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.subtract['zogy'].selectMeasurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.subtract['zogy'].selectMeasurement.plugins.names=['base_LocalBackground', 'base_CircularApertureFlux', 'base_Variance', 'base_PsfFlux', 'base_Blendedness', 'base_SkyCoord', 'base_SdssShape', 'base_GaussianFlux', 'base_SdssCentroid', 'base_NaiveCentroid', 'base_PixelFlags']
# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_FPPosition'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Jacobian'].doMeasure=True

# Nominal pixel size (arcsec)
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Jacobian'].pixelScale=0.5

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['base_SkyCoord'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].doMeasure=True

# Attempte dipole fit of all diaSources (otherwise just the ones consisting of overlapping
#         positive and negative footprints)
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].fitAllDiaSources=0.0

# Assume dipole is not separated by more than maxSeparation * psfSigma
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxSeparation=5.0

# Relative weighting of pre-subtraction images (higher -> greater influence of pre-sub.
#         images on fit)
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].relWeight=0.5

# Fit tolerance
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].tolerance=1e-07

# Set whether and how to fit for linear gradient in pre-sub. images. Possible values:0: do not fit background at all1 (default): pre-fit the background using linear least squares and then do not fit it as partof the dipole fitting optimization2: pre-fit the background using linear least squares (as in 1), and use the parameterestimates from that fit as starting parameters for an integrated re-fit of the background
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].fitBackground=1

# Include parameters to fit for negative values (flux, gradient) separately from pos.
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].fitSeparateNegParams=False

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxFluxRatio=0.65

# Maximum Chi2/DoF significance of fit to be considered a dipole.
#         Default value means "Choose a chi2DoF corresponding to a significance level of at most 0.05"
#         (note this is actually a significance, not a chi2 value).
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxChi2DoF=0.05

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].doMeasure=True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].maxFluxRatio=0.65

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.subtract['zogy'].selectMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.subtract['zogy'].selectMeasurement.undeblended.names=[]
# Perform all convolutions in real (image) space rather than Fourier space. Currently if True, this results in artifacts when using real (noisy) PSFs.
config.imageDifference.subtract['zogy'].zogyConfig.inImageSpace=False

# Number of pixels to pad PSFs to avoid artifacts (when inImageSpace is True)
config.imageDifference.subtract['zogy'].zogyConfig.padSize=7

# Template flux scaling factor (Fr in ZOGY paper)
config.imageDifference.subtract['zogy'].zogyConfig.templateFluxScaling=1.0

# Science flux scaling factor (Fn in ZOGY paper)
config.imageDifference.subtract['zogy'].zogyConfig.scienceFluxScaling=1.0

# Compute the flux normalization scaling based on the image calibration.This overrides 'templateFluxScaling' and 'scienceFluxScaling'.
config.imageDifference.subtract['zogy'].zogyConfig.scaleByCalibration=True

# Trim kernels for image-space ZOGY. Speeds up convolutions and shrinks artifacts. Subject of future research.
config.imageDifference.subtract['zogy'].zogyConfig.doTrimKernels=False

# Filter PSFs for image-space ZOGY. Aids in reducing artifacts. Subject of future research.
config.imageDifference.subtract['zogy'].zogyConfig.doFilterPsfs=True

# Mask planes to ignore for statistics
config.imageDifference.subtract['zogy'].zogyConfig.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

# Perform all convolutions in real (image) space rather than Fourier space. Currently if True, this results in artifacts when using real (noisy) PSFs.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.inImageSpace=False

# Number of pixels to pad PSFs to avoid artifacts (when inImageSpace is True)
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.padSize=7

# Template flux scaling factor (Fr in ZOGY paper)
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.templateFluxScaling=1.0

# Science flux scaling factor (Fn in ZOGY paper)
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.scienceFluxScaling=1.0

# Compute the flux normalization scaling based on the image calibration.This overrides 'templateFluxScaling' and 'scienceFluxScaling'.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.scaleByCalibration=True

# Trim kernels for image-space ZOGY. Speeds up convolutions and shrinks artifacts. Subject of future research.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.doTrimKernels=False

# Filter PSFs for image-space ZOGY. Aids in reducing artifacts. Subject of future research.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.doFilterPsfs=True

# Mask planes to ignore for statistics
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.mapper.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

# Operation to use for reducing subimages into new image.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.reducer.reduceOperation='average'

# Mask planes to set for invalid pixels
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.reducer.badMaskPlanes=['INVALID_MAPREDUCE', 'BAD', 'NO_DATA']

# Input X centroids around which to place subimages.
#                If None, use grid config options below.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.cellCentroidsX=None

# Input Y centroids around which to place subimages.
#                If None, use grid config options below.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.cellCentroidsY=None

# Dimensions of each grid cell in x direction
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.cellSizeX=41.0

# Dimensions of each grid cell in y direction
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.cellSizeY=41.0

# Spacing between subsequent grid cells in x direction. If equal to
#                cellSizeX, then there is no overlap in the x direction.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.gridStepX=40.0

# Spacing between subsequent grid cells in y direction. If equal to
#                cellSizeY, then there is no overlap in the y direction.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.gridStepY=40.0

# Dimensions of grid cell border in +/- x direction, to be used
#                for generating `expandedSubExposure`.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.borderSizeX=8.0

# Dimensions of grid cell border in +/- y direction, to be used
#                for generating `expandedSubExposure`.
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.borderSizeY=8.0

# Whether and how to adjust grid to fit evenly within, and cover entire
#                image
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.adjustGridOption='spacing'

# Scale cellSize/gridStep/borderSize/overlapSize by PSF FWHM rather
#                than pixels?
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.scaleByFwhm=True

# Return the input subExposures alongside the processed ones (for debugging)
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.returnSubImages=False

# Mask planes to ignore for sigma-clipped statistics
config.imageDifference.subtract['zogy'].zogyMapReduceConfig.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

config.imageDifference.subtract.name='al'
# Mask planes to ignore for sigma-clipped statistics
config.imageDifference.decorrelate.decorrelateConfig.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

# Mask planes to ignore for sigma-clipped statistics
config.imageDifference.decorrelate.decorrelateMapReduceConfig.mapper.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

# Operation to use for reducing subimages into new image.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.reducer.reduceOperation='average'

# Mask planes to set for invalid pixels
config.imageDifference.decorrelate.decorrelateMapReduceConfig.reducer.badMaskPlanes=['INVALID_MAPREDUCE', 'BAD', 'NO_DATA']

# Input X centroids around which to place subimages.
#                If None, use grid config options below.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.cellCentroidsX=None

# Input Y centroids around which to place subimages.
#                If None, use grid config options below.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.cellCentroidsY=None

# Dimensions of each grid cell in x direction
config.imageDifference.decorrelate.decorrelateMapReduceConfig.cellSizeX=41.0

# Dimensions of each grid cell in y direction
config.imageDifference.decorrelate.decorrelateMapReduceConfig.cellSizeY=41.0

# Spacing between subsequent grid cells in x direction. If equal to
#                cellSizeX, then there is no overlap in the x direction.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.gridStepX=40.0

# Spacing between subsequent grid cells in y direction. If equal to
#                cellSizeY, then there is no overlap in the y direction.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.gridStepY=40.0

# Dimensions of grid cell border in +/- x direction, to be used
#                for generating `expandedSubExposure`.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.borderSizeX=8.0

# Dimensions of grid cell border in +/- y direction, to be used
#                for generating `expandedSubExposure`.
config.imageDifference.decorrelate.decorrelateMapReduceConfig.borderSizeY=8.0

# Whether and how to adjust grid to fit evenly within, and cover entire
#                image
config.imageDifference.decorrelate.decorrelateMapReduceConfig.adjustGridOption='spacing'

# Scale cellSize/gridStep/borderSize/overlapSize by PSF FWHM rather
#                than pixels?
config.imageDifference.decorrelate.decorrelateMapReduceConfig.scaleByFwhm=True

# Return the input subExposures alongside the processed ones (for debugging)
config.imageDifference.decorrelate.decorrelateMapReduceConfig.returnSubImages=False

# Mask planes to ignore for sigma-clipped statistics
config.imageDifference.decorrelate.decorrelateMapReduceConfig.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

# Mask planes to ignore for sigma-clipped statistics
config.imageDifference.decorrelate.ignoreMaskPlanes=['INTRP', 'EDGE', 'DETECTED', 'SAT', 'CR', 'BAD', 'NO_DATA', 'DETECTED_NEGATIVE']

# If using Zogy or A&L decorrelation, perform these on a grid across the image in order to allow for spatial variations
config.imageDifference.doSpatiallyVarying=False

# detected sources with fewer than the specified number of pixels will be ignored
config.imageDifference.detection.minPixels=1

# Pixels should be grown as isotropically as possible (slower)
config.imageDifference.detection.isotropicGrow=False

# Grow all footprints at the same time? This allows disconnected footprints to merge.
config.imageDifference.detection.combinedGrow=True

# Grow detections by nSigmaToGrow * [PSF RMS width]; if 0 then do not grow
config.imageDifference.detection.nSigmaToGrow=2.4

# Grow detections to set the image mask bits, but return the original (not-grown) footprints
config.imageDifference.detection.returnOriginalFootprints=False

# Threshold for footprints; exact meaning and units depend on thresholdType.
config.imageDifference.detection.thresholdValue=5.5

# Include threshold relative to thresholdValue
config.imageDifference.detection.includeThresholdMultiplier=1.0

# specifies the desired flavor of Threshold
config.imageDifference.detection.thresholdType='pixel_stdev'

# specifies whether to detect positive, or negative sources, or both
config.imageDifference.detection.thresholdPolarity='both'

# Fiddle factor to add to the background; debugging only
config.imageDifference.detection.adjustBackground=0.0

# Estimate the background again after final source detection?
config.imageDifference.detection.reEstimateBackground=False

# type of statistic to use for grid points
config.imageDifference.detection.background.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.detection.background.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.detection.background.binSize=128

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.detection.background.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.detection.background.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.detection.background.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.detection.background.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.detection.background.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.detection.background.useApprox=True

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.detection.background.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.detection.background.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.detection.background.weighting=True

# type of statistic to use for grid points
config.imageDifference.detection.tempLocalBackground.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.detection.tempLocalBackground.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.detection.tempLocalBackground.binSize=64

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.detection.tempLocalBackground.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.detection.tempLocalBackground.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.detection.tempLocalBackground.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.detection.tempLocalBackground.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.detection.tempLocalBackground.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.detection.tempLocalBackground.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.detection.tempLocalBackground.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.detection.tempLocalBackground.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.detection.tempLocalBackground.weighting=True

# Enable temporary local background subtraction? (see tempLocalBackground)
config.imageDifference.detection.doTempLocalBackground=True

# type of statistic to use for grid points
config.imageDifference.detection.tempWideBackground.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.detection.tempWideBackground.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.detection.tempWideBackground.binSize=512

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.detection.tempWideBackground.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.detection.tempWideBackground.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.detection.tempWideBackground.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.detection.tempWideBackground.ignoredPixelMask=['BAD', 'EDGE', 'NO_DATA']

# Ignore NaNs when estimating the background
config.imageDifference.detection.tempWideBackground.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.detection.tempWideBackground.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.detection.tempWideBackground.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.detection.tempWideBackground.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.detection.tempWideBackground.weighting=True

# Do temporary wide (large-scale) background subtraction before footprint detection?
config.imageDifference.detection.doTempWideBackground=False

# The maximum number of peaks in a Footprint before trying to replace its peaks using the temporary local background
config.imageDifference.detection.nPeaksMaxSimple=1

# Multiple of PSF RMS size to use for convolution kernel bounding box size; note that this is not a half-size. The size will be rounded up to the nearest odd integer
config.imageDifference.detection.nSigmaForKernel=7.0

# Mask planes to ignore when calculating statistics of image (for thresholdType=stdev)
config.imageDifference.detection.statsMask=['BAD', 'SAT', 'EDGE', 'NO_DATA']

# the name of the centroiding algorithm used to set source x,y
config.imageDifference.measurement.slots.centroid='ip_diffim_NaiveDipoleCentroid'

# the name of the algorithm used to set source moments parameters
config.imageDifference.measurement.slots.shape='base_SdssShape'

# the name of the algorithm used to set PSF moments parameters
config.imageDifference.measurement.slots.psfShape='base_SdssShape_psf'

# the name of the algorithm used to set the source aperture instFlux slot
config.imageDifference.measurement.slots.apFlux='base_CircularApertureFlux_12_0'

# the name of the algorithm used to set the source model instFlux slot
config.imageDifference.measurement.slots.modelFlux=None

# the name of the algorithm used to set the source psf instFlux slot
config.imageDifference.measurement.slots.psfFlux='base_PsfFlux'

# the name of the algorithm used to set the source Gaussian instFlux slot
config.imageDifference.measurement.slots.gaussianFlux=None

# the name of the instFlux measurement algorithm used for calibration
config.imageDifference.measurement.slots.calibFlux=None

# When measuring, replace other detected footprints with noise?
config.imageDifference.measurement.doReplaceWithNoise=False

# How to choose mean and variance of the Gaussian noise we generate?
config.imageDifference.measurement.noiseReplacer.noiseSource='measure'

# Add ann offset to the generated noise.
config.imageDifference.measurement.noiseReplacer.noiseOffset=0.0

# The seed multiplier value to use for random number generation:
# >= 1: set the seed deterministically based on exposureId
# 0: fall back to the afw.math.Random default constructor (which uses a seed value of 1)
config.imageDifference.measurement.noiseReplacer.noiseSeedMultiplier=1

# Prefix to give undeblended plugins
config.imageDifference.measurement.undeblendedPrefix='undeblended_'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.measurement.plugins['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.measurement.plugins['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.measurement.plugins['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.measurement.plugins['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.measurement.plugins['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.measurement.plugins['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.measurement.plugins['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.measurement.plugins['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.measurement.plugins['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.measurement.plugins['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.measurement.plugins['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.measurement.plugins['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.measurement.plugins['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.measurement.plugins['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.measurement.plugins['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.measurement.plugins['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.measurement.plugins['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.measurement.plugins['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.measurement.plugins['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.measurement.plugins['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.measurement.plugins['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.measurement.plugins['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.measurement.plugins['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.measurement.plugins['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.measurement.plugins['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.measurement.plugins['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.measurement.plugins['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.measurement.plugins['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.measurement.plugins['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.measurement.plugins['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.measurement.plugins['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.measurement.plugins['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.measurement.plugins['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_FPPosition'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_Jacobian'].doMeasure=True

# Nominal pixel size (arcsec)
config.imageDifference.measurement.plugins['base_Jacobian'].pixelScale=0.5

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.measurement.plugins['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.measurement.plugins['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['base_SkyCoord'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].doMeasure=True

# Attempte dipole fit of all diaSources (otherwise just the ones consisting of overlapping
#         positive and negative footprints)
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].fitAllDiaSources=0.0

# Assume dipole is not separated by more than maxSeparation * psfSigma
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].maxSeparation=5.0

# Relative weighting of pre-subtraction images (higher -> greater influence of pre-sub.
#         images on fit)
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].relWeight=0.5

# Fit tolerance
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].tolerance=1e-07

# Set whether and how to fit for linear gradient in pre-sub. images. Possible values:0: do not fit background at all1 (default): pre-fit the background using linear least squares and then do not fit it as partof the dipole fitting optimization2: pre-fit the background using linear least squares (as in 1), and use the parameterestimates from that fit as starting parameters for an integrated re-fit of the background
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].fitBackground=1

# Include parameters to fit for negative values (flux, gradient) separately from pos.
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].fitSeparateNegParams=False

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].maxFluxRatio=0.65

# Maximum Chi2/DoF significance of fit to be considered a dipole.
#         Default value means "Choose a chi2DoF corresponding to a significance level of at most 0.05"
#         (note this is actually a significance, not a chi2 value).
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].maxChi2DoF=0.05

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['ip_diffim_ClassificationDipole'].doMeasure=True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_ClassificationDipole'].maxFluxRatio=0.65

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.plugins['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.measurement.plugins['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.measurement.plugins['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.measurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.measurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.measurement.plugins.names=['base_SdssCentroid', 'ip_diffim_ClassificationDipole', 'base_CircularApertureFlux', 'base_PeakCentroid', 'base_LocalWcs', 'base_PsfFlux', 'base_SkyCoord', 'base_SdssShape', 'base_GaussianFlux', 'ip_diffim_NaiveDipoleCentroid', 'ip_diffim_PsfDipoleFlux', 'base_PeakLikelihoodFlux', 'base_LocalPhotoCalib', 'ip_diffim_NaiveDipoleFlux', 'base_NaiveCentroid', 'base_PixelFlags']
# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.measurement.undeblended['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.measurement.undeblended['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.measurement.undeblended['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.measurement.undeblended['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.measurement.undeblended['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.measurement.undeblended['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.measurement.undeblended['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.measurement.undeblended['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.measurement.undeblended['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.measurement.undeblended['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.measurement.undeblended['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.measurement.undeblended['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.measurement.undeblended['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.measurement.undeblended['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.measurement.undeblended['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.measurement.undeblended['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.measurement.undeblended['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.measurement.undeblended['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.measurement.undeblended['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.measurement.undeblended['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.measurement.undeblended['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.measurement.undeblended['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.measurement.undeblended['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.measurement.undeblended['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.measurement.undeblended['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.measurement.undeblended['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.measurement.undeblended['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.measurement.undeblended['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.measurement.undeblended['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.measurement.undeblended['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.measurement.undeblended['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.measurement.undeblended['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.measurement.undeblended['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_FPPosition'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_Jacobian'].doMeasure=True

# Nominal pixel size (arcsec)
config.imageDifference.measurement.undeblended['base_Jacobian'].pixelScale=0.5

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.measurement.undeblended['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.measurement.undeblended['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['base_SkyCoord'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].doMeasure=True

# Attempte dipole fit of all diaSources (otherwise just the ones consisting of overlapping
#         positive and negative footprints)
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].fitAllDiaSources=0.0

# Assume dipole is not separated by more than maxSeparation * psfSigma
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].maxSeparation=5.0

# Relative weighting of pre-subtraction images (higher -> greater influence of pre-sub.
#         images on fit)
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].relWeight=0.5

# Fit tolerance
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].tolerance=1e-07

# Set whether and how to fit for linear gradient in pre-sub. images. Possible values:0: do not fit background at all1 (default): pre-fit the background using linear least squares and then do not fit it as partof the dipole fitting optimization2: pre-fit the background using linear least squares (as in 1), and use the parameterestimates from that fit as starting parameters for an integrated re-fit of the background
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].fitBackground=1

# Include parameters to fit for negative values (flux, gradient) separately from pos.
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].fitSeparateNegParams=False

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].maxFluxRatio=0.65

# Maximum Chi2/DoF significance of fit to be considered a dipole.
#         Default value means "Choose a chi2DoF corresponding to a significance level of at most 0.05"
#         (note this is actually a significance, not a chi2 value).
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].maxChi2DoF=0.05

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['ip_diffim_ClassificationDipole'].doMeasure=True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_ClassificationDipole'].maxFluxRatio=0.65

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.measurement.undeblended['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.measurement.undeblended['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.measurement.undeblended['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.measurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.measurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.measurement.undeblended.names=[]
# Run subtask to apply aperture corrections
config.imageDifference.doApCorr=True

# flux measurement algorithms in getApCorrNameSet() to ignore; if a name is listed that does not appear in getApCorrNameSet() then a warning is logged
config.imageDifference.applyApCorr.ignoreList=[]

# set the general failure flag for a flux when it cannot be aperture-corrected?
config.imageDifference.applyApCorr.doFlagApCorrFailures=True

# flux measurement algorithms to be aperture-corrected by reference to another algorithm; this is a mapping alg1:alg2, where 'alg1' is the algorithm being corrected, and 'alg2' is the algorithm supplying the corrections
config.imageDifference.applyApCorr.proxies={}

# the name of the centroiding algorithm used to set source x,y
config.imageDifference.forcedMeasurement.slots.centroid='base_TransformedCentroid'

# the name of the algorithm used to set source moments parameters
config.imageDifference.forcedMeasurement.slots.shape=None

# the name of the algorithm used to set PSF moments parameters
config.imageDifference.forcedMeasurement.slots.psfShape='base_SdssShape_psf'

# the name of the algorithm used to set the source aperture instFlux slot
config.imageDifference.forcedMeasurement.slots.apFlux=None

# the name of the algorithm used to set the source model instFlux slot
config.imageDifference.forcedMeasurement.slots.modelFlux=None

# the name of the algorithm used to set the source psf instFlux slot
config.imageDifference.forcedMeasurement.slots.psfFlux=None

# the name of the algorithm used to set the source Gaussian instFlux slot
config.imageDifference.forcedMeasurement.slots.gaussianFlux=None

# the name of the instFlux measurement algorithm used for calibration
config.imageDifference.forcedMeasurement.slots.calibFlux=None

# When measuring, replace other detected footprints with noise?
config.imageDifference.forcedMeasurement.doReplaceWithNoise=True

# How to choose mean and variance of the Gaussian noise we generate?
config.imageDifference.forcedMeasurement.noiseReplacer.noiseSource='measure'

# Add ann offset to the generated noise.
config.imageDifference.forcedMeasurement.noiseReplacer.noiseOffset=0.0

# The seed multiplier value to use for random number generation:
# >= 1: set the seed deterministically based on exposureId
# 0: fall back to the afw.math.Random default constructor (which uses a seed value of 1)
config.imageDifference.forcedMeasurement.noiseReplacer.noiseSeedMultiplier=1

# Prefix to give undeblended plugins
config.imageDifference.forcedMeasurement.undeblendedPrefix='undeblended_'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.forcedMeasurement.plugins['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.forcedMeasurement.plugins['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.forcedMeasurement.plugins['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.forcedMeasurement.plugins['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.forcedMeasurement.plugins['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.forcedMeasurement.plugins['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.forcedMeasurement.plugins['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.forcedMeasurement.plugins['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.forcedMeasurement.plugins['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.forcedMeasurement.plugins['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.forcedMeasurement.plugins['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.forcedMeasurement.plugins['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.forcedMeasurement.plugins['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.forcedMeasurement.plugins['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.forcedMeasurement.plugins['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.forcedMeasurement.plugins['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.forcedMeasurement.plugins['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.forcedMeasurement.plugins['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.forcedMeasurement.plugins['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.forcedMeasurement.plugins['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.forcedMeasurement.plugins['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.forcedMeasurement.plugins['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.forcedMeasurement.plugins['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.forcedMeasurement.plugins['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.forcedMeasurement.plugins['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.forcedMeasurement.plugins['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.forcedMeasurement.plugins['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.forcedMeasurement.plugins['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.forcedMeasurement.plugins['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.forcedMeasurement.plugins['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_TransformedCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['base_TransformedShape'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.plugins['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.forcedMeasurement.plugins['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.forcedMeasurement.plugins['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.forcedMeasurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.forcedMeasurement.plugins['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.forcedMeasurement.plugins.names=['base_TransformedCentroid', 'base_PsfFlux']
# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_PsfFlux'].doMeasure=True

# Mask planes that indicate pixels that should be excluded from the fit
config.imageDifference.forcedMeasurement.undeblended['base_PsfFlux'].badMaskPlanes=[]

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_PeakLikelihoodFlux'].doMeasure=True

# Name of warping kernel (e.g. "lanczos4") used to compute the peak
config.imageDifference.forcedMeasurement.undeblended['base_PeakLikelihoodFlux'].warpingKernelName='lanczos4'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_GaussianFlux'].doMeasure=True

# FIXME! NEVER DOCUMENTED!
config.imageDifference.forcedMeasurement.undeblended['base_GaussianFlux'].background=0.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_NaiveCentroid'].doMeasure=True

# Value to subtract from the image pixel values
config.imageDifference.forcedMeasurement.undeblended['base_NaiveCentroid'].background=0.0

# Do check that the centroid is contained in footprint.
config.imageDifference.forcedMeasurement.undeblended['base_NaiveCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.forcedMeasurement.undeblended['base_NaiveCentroid'].maxDistToPeak=-1.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_SdssCentroid'].doMeasure=True

# maximum allowed binning
config.imageDifference.forcedMeasurement.undeblended['base_SdssCentroid'].binmax=16

# Do check that the centroid is contained in footprint.
config.imageDifference.forcedMeasurement.undeblended['base_SdssCentroid'].doFootprintCheck=True

# If set > 0, Centroid Check also checks distance from footprint peak.
config.imageDifference.forcedMeasurement.undeblended['base_SdssCentroid'].maxDistToPeak=-1.0

# if the peak's less than this insist on binning at least once
config.imageDifference.forcedMeasurement.undeblended['base_SdssCentroid'].peakMin=-1.0

# fiddle factor for adjusting the binning
config.imageDifference.forcedMeasurement.undeblended['base_SdssCentroid'].wfac=1.5

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_PixelFlags'].doMeasure=True

# List of mask planes to be searched for which occur anywhere within a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.forcedMeasurement.undeblended['base_PixelFlags'].masksFpAnywhere=[]

# List of mask planes to be searched for which occur in the center of a footprint. If any of the planes are found they will have a corresponding pixel flag set.
config.imageDifference.forcedMeasurement.undeblended['base_PixelFlags'].masksFpCenter=[]

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].doMeasure=True

# Additional value to add to background
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].background=0.0

# Whether to also compute the shape of the PSF model
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].doMeasurePsf=True

# Maximum number of iterations
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].maxIter=100

# Maximum centroid shift, limited to 2-10
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].maxShift=0.0

# Convergence tolerance for e1,e2
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].tol1=9.999999747378752e-06

# Convergence tolerance for FWHM
config.imageDifference.forcedMeasurement.undeblended['base_SdssShape'].tol2=9.999999747378752e-05

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_ScaledApertureFlux'].doMeasure=True

# Scaling factor of PSF FWHM for aperture radius.
config.imageDifference.forcedMeasurement.undeblended['base_ScaledApertureFlux'].scale=3.14

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.forcedMeasurement.undeblended['base_ScaledApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_CircularApertureFlux'].doMeasure=True

# Maximum radius (in pixels) for which the sinc algorithm should be used instead of the faster naive algorithm.  For elliptical apertures, this is the minor axis radius.
config.imageDifference.forcedMeasurement.undeblended['base_CircularApertureFlux'].maxSincRadius=10.0

# Radius (in pixels) of apertures.
config.imageDifference.forcedMeasurement.undeblended['base_CircularApertureFlux'].radii=[3.0, 4.5, 6.0, 9.0, 12.0, 17.0, 25.0, 35.0, 50.0, 70.0]

# Warping kernel used to shift Sinc photometry coefficients to different center positions
config.imageDifference.forcedMeasurement.undeblended['base_CircularApertureFlux'].shiftKernel='lanczos5'

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_Blendedness'].doMeasure=True

# Whether to compute quantities related to the Gaussian-weighted flux
config.imageDifference.forcedMeasurement.undeblended['base_Blendedness'].doFlux=True

# Whether to compute HeavyFootprint dot products (the old deblend.blendedness parameter)
config.imageDifference.forcedMeasurement.undeblended['base_Blendedness'].doOld=True

# Whether to compute quantities related to the Gaussian-weighted shape
config.imageDifference.forcedMeasurement.undeblended['base_Blendedness'].doShape=True

# Radius factor that sets the maximum extent of the weight function (and hence the flux measurements)
config.imageDifference.forcedMeasurement.undeblended['base_Blendedness'].nSigmaWeightMax=3.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_LocalBackground'].doMeasure=True

# Inner radius for background annulus as a multiple of the PSF sigma
config.imageDifference.forcedMeasurement.undeblended['base_LocalBackground'].annulusInner=7.0

# Outer radius for background annulus as a multiple of the PSF sigma
config.imageDifference.forcedMeasurement.undeblended['base_LocalBackground'].annulusOuter=15.0

# Mask planes that indicate pixels that should be excluded from the measurement
config.imageDifference.forcedMeasurement.undeblended['base_LocalBackground'].badMaskPlanes=['BAD', 'SAT', 'NO_DATA']

# Number of sigma-clipping iterations for background measurement
config.imageDifference.forcedMeasurement.undeblended['base_LocalBackground'].bgIter=3

# Rejection threshold (in standard deviations) for background measurement
config.imageDifference.forcedMeasurement.undeblended['base_LocalBackground'].bgRej=3.0

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_Variance'].doMeasure=True

# Scale factor to apply to shape for aperture
config.imageDifference.forcedMeasurement.undeblended['base_Variance'].scale=5.0

# Mask planes to ignore
config.imageDifference.forcedMeasurement.undeblended['base_Variance'].mask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT']

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_InputCount'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_LocalPhotoCalib'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_LocalWcs'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_PeakCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_TransformedCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['base_TransformedShape'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_NaiveDipoleCentroid'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_NaiveDipoleFlux'].doMeasure=True

# whether to run this plugin in single-object mode
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].doMeasure=True

# How many sigma the error bars of the non-linear fitter represent
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].errorDef=1.0

# Maximum function calls for non-linear fitter; 0 = unlimited
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].maxFnCalls=100000

# Default initial step size for coordinates in non-linear fitter
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeCoord=0.10000000149011612

# Default initial step size for flux in non-linear fitter
config.imageDifference.forcedMeasurement.undeblended['ip_diffim_PsfDipoleFlux'].stepSizeFlux=1.0

config.imageDifference.forcedMeasurement.undeblended.names=[]
# Mapping of reference columns to source columns
config.imageDifference.forcedMeasurement.copyColumns={'id': 'objectId', 'parent': 'parentObjectId', 'coord_ra': 'coord_ra', 'coord_dec': 'coord_dec'}

# Strictness of Astropy unit compatibility check, can be 'raise', 'warn' or 'silent'
config.imageDifference.forcedMeasurement.checkUnitsParseStrict='raise'

# Number of pixels to grow the requested template image to account for warping
config.imageDifference.getTemplate.templateBorderSize=10

# coadd name: typically one of 'deep', 'goodSeeing', or 'dcr'
config.imageDifference.getTemplate.coaddName='deep'

# Number of subfilters in the DcrCoadd, used only if ``coaddName``='dcr'
config.imageDifference.getTemplate.numSubfilters=3

# Warp type of the coadd template: one of 'direct' or 'psfMatched'
config.imageDifference.getTemplate.warpType='direct'

# type of statistic to use for grid points
config.imageDifference.scaleVariance.background.statisticsProperty='MEANCLIP'

# behaviour if there are too few points in grid for requested interpolation style
config.imageDifference.scaleVariance.background.undersampleStyle='REDUCE_INTERP_ORDER'

# how large a region of the sky should be used for each background point
config.imageDifference.scaleVariance.background.binSize=32

# Sky region size to be used for each background point in X direction. If 0, the binSize config is used.
config.imageDifference.scaleVariance.background.binSizeX=0

# Sky region size to be used for each background point in Y direction. If 0, the binSize config is used.
config.imageDifference.scaleVariance.background.binSizeY=0

# how to interpolate the background values. This maps to an enum; see afw::math::Background
config.imageDifference.scaleVariance.background.algorithm='AKIMA_SPLINE'

# Names of mask planes to ignore while estimating the background
config.imageDifference.scaleVariance.background.ignoredPixelMask=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT', 'NO_DATA', 'INTRP']

# Ignore NaNs when estimating the background
config.imageDifference.scaleVariance.background.isNanSafe=False

# Use Approximate (Chebyshev) to model background.
config.imageDifference.scaleVariance.background.useApprox=False

# Approximation order in X for background Chebyshev (valid only with useApprox=True)
config.imageDifference.scaleVariance.background.approxOrderX=6

# Approximation order in Y for background Chebyshev (valid only with useApprox=True)
config.imageDifference.scaleVariance.background.approxOrderY=-1

# Use inverse variance weighting in calculation (valid only with useApprox=True)
config.imageDifference.scaleVariance.background.weighting=True

# Mask planes for pixels to ignore when scaling variance
config.imageDifference.scaleVariance.maskPlanes=['DETECTED', 'DETECTED_NEGATIVE', 'BAD', 'SAT', 'NO_DATA', 'INTRP']

# Maximum variance scaling value to permit
config.imageDifference.scaleVariance.limit=10.0

# What step size (every Nth one) to select a control sample from the kernelSources
config.imageDifference.controlStepSize=5

# Random seed for shuffing the control sample
config.imageDifference.controlRandomSeed=10

# Matching radius (arcsec)
config.imageDifference.register.matchRadius=1.0

# Order for SIP WCS
config.imageDifference.register.sipOrder=4

# Rejection iterations for SIP WCS
config.imageDifference.register.sipIter=3

# Rejection threshold for SIP WCS
config.imageDifference.register.sipRej=3.0

# Warping kernel
config.imageDifference.register.warper.warpingKernelName='lanczos3'

# Warping kernel for mask (use ``warpingKernelName`` if '')
config.imageDifference.register.warper.maskWarpingKernelName='bilinear'

# ``interpLength`` argument to `lsst.afw.math.warpExposure`
config.imageDifference.register.warper.interpLength=10

# ``cacheSize`` argument to `lsst.afw.math.SeparableKernel.computeCache`
config.imageDifference.register.warper.cacheSize=1000000

# mask bits to grow to full width of image/variance kernel,
config.imageDifference.register.warper.growFullMask=16

# Select sources to measure kernel from reference catalog if True, template if false
config.imageDifference.kernelSourcesFromRef=True

# Sip Order for fitting the Template Wcs (default is too high, overfitting)
config.imageDifference.templateSipOrder=2

# Grow positive and negative footprints by this amount before merging
config.imageDifference.growFootprint=2

# Match radius (in arcseconds) for DiaSource to Source association
config.imageDifference.diaSourceMatchRadius=0.5

# name for connection exposure
config.imageDifference.connections.exposure='calexp'

# name for connection skyMap
config.imageDifference.connections.skyMap='{skyMapName}Coadd_skyMap'

# name for connection coaddExposures
config.imageDifference.connections.coaddExposures='{fakesType}{coaddName}Coadd{warpTypeSuffix}'

# name for connection dcrCoadds
config.imageDifference.connections.dcrCoadds='{fakesType}dcrCoadd{warpTypeSuffix}'

# name for connection subtractedExposure
config.imageDifference.connections.subtractedExposure='{fakesType}{coaddName}Diff_differenceExp'

# name for connection diaSources
config.imageDifference.connections.diaSources='{fakesType}{coaddName}Diff_diaSrc'

# Template parameter used to format corresponding field template parameter
config.imageDifference.connections.coaddName='deep'

# Template parameter used to format corresponding field template parameter
config.imageDifference.connections.skyMapName='deep'

# Template parameter used to format corresponding field template parameter
config.imageDifference.connections.warpTypeSuffix=''

# Template parameter used to format corresponding field template parameter
config.imageDifference.connections.fakesType=''

