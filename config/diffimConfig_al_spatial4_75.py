from lsst.meas.algorithms import LoadIndexedReferenceObjectsTask
config.imageDifference.refObjLoader.retarget(LoadIndexedReferenceObjectsTask)
config.imageDifference.refObjLoader.load('obs_lsst/config/filterMap.py')
config.imageDifference.kernelSourcesFromRef = True
config.ccdKey = 'detector'

# config.imageDifference.detection.thresholdValue = 5.5

# default order = 1
config.imageDifference.subtract['al'].kernel['AL'].spatialKernelOrder=4
# config.imageDifference.subtract['al'].kernel['AL'].usePcaForSpatialKernel=False

# Convolve science image by its PSF before PSF-matching?
# config.imageDifference.doPreConvolve=False
# Use a simple gaussian PSF model for pre-convolution (else use fit PSF)? Ignored if doPreConvolve false.
# config.imageDifference.useGaussianForPreConvolution=False

# Perform diffim decorrelation to undo pixel correlation due to A&L kernel convolution? If True, also update the diffim PSF.
# config.imageDifference.doDecorrelation = False
# If using Zogy or A&L decorrelation, perform these on a grid across the image in order to allow for spatial variations
# config.imageDifference.doSpatiallyVarying = False

# config.imageDifference.subtract['al'].kernel['AL'].kernelBasisSet='alard-lupton'
# config.imageDifference.subtract['al'].kernel['DF'].kernelBasisSet='delta-function'

# config.imageDifference.convolveTemplate = True
# config.imageDifference.doDeblend = True

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_DipoleFit'].maxFluxRatio=0.75


# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.plugins['ip_diffim_ClassificationDipole'].maxFluxRatio=0.75


# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_DipoleFit'].maxFluxRatio=0.75

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.subtract['al'].selectMeasurement.undeblended['ip_diffim_ClassificationDipole'].maxFluxRatio=0.75


# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_DipoleFit'].maxFluxRatio=0.75

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.plugins['ip_diffim_ClassificationDipole'].maxFluxRatio=0.75


# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_DipoleFit'].maxFluxRatio=0.75

# Minimum quadrature sum of positive+negative lobe S/N to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_ClassificationDipole'].minSn=7.0710678118654755

# Maximum flux ratio in either lobe to be considered a dipole
config.imageDifference.measurement.undeblended['ip_diffim_ClassificationDipole'].maxFluxRatio=0.75