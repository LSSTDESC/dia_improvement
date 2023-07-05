#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  analyze_sub.py
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

import os

import numpy as np
import matplotlib.pyplot as plt

from scipy import stats
from lsst import geom
from lsst.daf.persistence import Butler
from astropy.table import Table

import lsst.afw.display as afwDisplay

import image_analyzer as im


basepath = '/global/cfs/cdirs/lsst/groups/SN/dia/data/bos0109/test_subtractions/'

visit, detector, filt = int(400390), int(157), 'g'

dataset_type = 'deepDiff_differenceExp'
calexp_id = {'visit': visit, 'detector': detector, 'filter': filt}
tab_n = 'deepDiff/v00400390-fg/R34/diaSrc_00400390-g-R34-S11-det157.fits'

algs = ['AL', 'Z']
confs = ['AA', 'AB', 'BA', 'BB']

results = {}
for an_alg in algs:
    for a_conf in confs:
        data_name = f'test_{an_alg}_{a_conf}/'
    
        diaSrc_repo = os.path.join(basepath, data_name)
        diaSrc_butler = Butler(diaSrc_repo)

        exposure = diaSrc_butler.get(dataset_type, dataId=calexp_id)
        t = Table.read(os.path.join(basepath, data_name+tab_n))
        if len(t) < 300:
            tab = t
        else:
            ii = np.random.choice(np.arange(len(t)), size=300, replace=False)
            tab = t[ii]
        
        x_list, y_list = tab['base_NaiveCentroid_x'], tab['base_NaiveCentroid_y']
        diasource_analyzer = im.ImageAnalyzer(exposure, x_list, y_list)

        global_analysis = diasource_analyzer.image_statistics(fill=False, clip_image=True, alpha=0.05)
        global_analysis['SUB_CODE'] = data_name
        results[data_name] = global_analysis

        #single_position = diasource_analyzer.cutout_analysis(1500, 1700, fill=False,
        #                                                    clip_image=True,alpha=0.05,
        #                                                    image_show=False, hist_show=False, 
        #                                                    cov_show=False)

from astropy.table import vstack
res = []
for k, v in results.items():
    res.append(v)
res = vstack(res)
res.write('results_subs_short.csv', format='csv')

