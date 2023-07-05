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

config.imageDifference.subtract = 'zogy'


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
