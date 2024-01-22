import os
from lsst.utils import getPackageDir
from lsst.meas.algorithms import LoadIndexedReferenceObjectsTask
from lsst.ip.diffim.getTemplate import GetCalexpAsTemplateTask

config.imageDifference.refObjLoader.retarget(LoadIndexedReferenceObjectsTask)
config.imageDifference.refObjLoader.load(os.path.join(getPackageDir('obs_lsst'), 'config', 'filterMap.py'))
config.imageDifference.kernelSourcesFromRef = True
config.ccdKey = 'detector'

# config.imageDifference.detection.thresholdValue = 5.5
config.imageDifference.subtract='zogy'

# config.makeDiffim.doWriteSubtractedExp=True
# config.makeDiffim.doWriteMatchedExp=True
# config.makeDiffim.doDecorrelation=True
# config.imageDifference.subtract['zogy'].zogyConfig.inImageSpace=False
# config.getTemplate.retarget(GetCalexpAsTemplateTask)

