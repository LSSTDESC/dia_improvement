from lsst.meas.algorithms import LoadIndexedReferenceObjectsTask
config.imageDifference.refObjLoader.retarget(LoadIndexedReferenceObjectsTask)
config.imageDifference.kernelSourcesFromRef = True
config.ccdKey = 'detector'

# config.imageDifference.detection.thresholdValue = 5.5

# default order = 1
config.imageDifference.subtract['al'].kernel['AL'].spatialKernelOrder=4
config.imageDifference.subtract['al'].kernel['AL'].usePcaForSpatialKernel=True

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

