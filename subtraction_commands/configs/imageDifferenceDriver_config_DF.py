#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  imageDifferenceDriver_config_zogy.py
#  
#  Copyright 2019 bruno <bruno.sanchez@duke.edu>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  
import os
from lsst.utils import getPackageDir
from lsst.meas.algorithms import LoadIndexedReferenceObjectsTask

config.imageDifference.refObjLoader.retarget(LoadIndexedReferenceObjectsTask)
config.imageDifference.refObjLoader.load(os.path.join(getPackageDir('obs_lsst'), 'config', 'filterMap.py'))
config.imageDifference.kernelSourcesFromRef = True
config.ccdKey = 'detector'

config.imageDifference.subtract = 'al'
config.imageDifference.subtract['al'].kernel.active.spatialKernelOrder=5 
config.imageDifference.subtract['al'].kernel='DF'
config.imageDifference.subtract['al'].kernel['DF'].kernelSize=21
# Use regularization to smooth the delta function kernels
config.imageDifference.subtract['al'].kernel['DF'].useRegularization=True
# Use Bayesian Information Criterion to select the number of bases going into the kernel
config.imageDifference.subtract['al'].kernel['DF'].useBicForKernelBasis=False
# Spatial order of convolution kernel variation
config.imageDifference.subtract['al'].kernel['DF'].spatialKernelOrder=2
# option added by Bob, writes the template to the subtraction folder too
config.imageDifference.writeTemplate = True
# Remake KernelCandidate using better variance estimate after first pass?
#                  Primarily useful when convolving a single-depth image, otherwise not necessary.
config.imageDifference.subtract['al'].kernel['DF'].iterateSingleKernel=False
# Use constant variance weighting in single kernel fitting?
#                  In some cases this is better for bright star residuals.
config.imageDifference.subtract['al'].kernel['DF'].constantVarianceWeighting=True
#
#config.doWriteSubtractedExp = True
#config.doWriteMatchedExp = True
#config.doDecorrelation = False 
#config.doSpatiallyVarying = False
# make a pre convolution of the image so it is broader than the template.
#config.imageDifference.doPreconvolve = True

