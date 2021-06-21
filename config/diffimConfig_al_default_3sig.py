from lsst.meas.algorithms import LoadIndexedReferenceObjectsTask
config.imageDifference.refObjLoader.retarget(LoadIndexedReferenceObjectsTask)
config.imageDifference.refObjLoader.load('obs_lsst/config/filterMap.py')
config.imageDifference.kernelSourcesFromRef = True
config.ccdKey = 'detector'

config.imageDifference.detection.thresholdValue = 3
