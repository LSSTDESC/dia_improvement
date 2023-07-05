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
# Type of basis set for PSF matching kernel.
config.imageDifference.subtract['al'].kernel='AL' 
# Type of basis set for PSF matching kernel.
config.imageDifference.subtract['al'].kernel['AL'].kernelBasisSet='alard-lupton'
# Number of rows/columns in the convolution kernel; should be odd-valued.
#                  Modified by kernelSizeFwhmScaling if scaleByFwhm = true
config.imageDifference.subtract['al'].kernel['AL'].kernelSize=21
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
# Scale kernelSize, alardGaussians by input Fwhm
config.imageDifference.subtract['al'].kernel['AL'].scaleByFwhm=True
# Calculate kernel and background uncertainties for each kernel candidate?
#                  This comes from the inverse of the covariance matrix.
#                  Warning: regularization can cause problems for this step.
config.imageDifference.subtract['al'].kernel['AL'].calculateKernelUncertainty=False
# Use Bayesian Information Criterion to select the number of bases going into the kernel
config.imageDifference.subtract['al'].kernel['AL'].useBicForKernelBasis=False
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
config.imageDifference.subtract['al'].kernel['AL'].spatialBgOrder=0
# Names of mask planes to ignore while estimating the background
config.imageDifference.subtract['al'].kernel['AL'].afwBackgroundConfig.ignoredPixelMask=['BAD', 'EDGE', 'DETECTED', 'DETECTED_NEGATIVE', 'NO_DATA']


#config.imageDifference.writeTemplate = True
#config.imageDifference.doPreconvolve = True
#
#config.doWriteSubtractedExp = True
#config.doWriteMatchedExp = True
#config.doDecorrelation = False 
#config.doSpatiallyVarying = False