# This script is compatible with desc-stack-weekly kernel.
import os
import numpy as np
import pandas as pd
import GCRCatalogs
import lsst.geom as geom
from lsst.daf.persistence import Butler

def get_sky_boundary(bbox, wcs):
    # get the bouding radec of the exposure
    begin_x, begin_y = bbox.beginX, bbox.beginY
    end_x, end_y = bbox.endX, bbox.endY
    # print('begin x: ', begin_x, 'begin y: ', begin_y, 'end x: ', end_x, 'end y: ', end_y)
    sky_00 = geom.SpherePoint(wcs.pixelToSky(begin_x, begin_y))
    sky_01 = geom.SpherePoint(wcs.pixelToSky(begin_x, end_y))
    sky_10 = geom.SpherePoint(wcs.pixelToSky(end_x, begin_y))
    sky_11 = geom.SpherePoint(wcs.pixelToSky(end_x, end_y))
    ras = np.array([sky_00.getRa().asDegrees(), sky_01.getRa().asDegrees(),
                   sky_10.getRa().asDegrees(), sky_11.getRa().asDegrees()])
    ras.sort()
    decs = np.array([sky_00.getDec().asDegrees(), sky_01.getDec().asDegrees(),
                   sky_10.getDec().asDegrees(), sky_11.getDec().asDegrees()])
    decs.sort()
    radec_dict = {
        'begin_ra': ras[0], 'end_ra': ras[3],
        'begin_dec': decs[0], 'end_dec': decs[3]
    }
    return radec_dict


# read files
data_dir = '/pscratch/sd/s/shl159/Cori/projects/fake_injection_v23/dia_improvement/devel/data'
image_table = pd.read_csv(os.path.join(data_dir, 'table/gal_4639/image_info_20_21_m20.csv'))
save_dir = './background_sources_run22i'
# GCRCatalog
# https://github.com/LSSTDESC/gcr-catalogs
gc = GCRCatalogs.load_catalog('dc2_run2.2i_truth_merged_summary')
# butler
calexp_repo = '/global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-calexp-v1'
calexp_butler = Butler(calexp_repo)

for idx, row in image_table.iterrows():
    # get visit and detector
    visit = int(row['visit'])
    det = int(row['detector'])
    # get calexp and its boundary coordinates
    calexp_id = {'visit': visit, 'detector': det, 'filter': 'i'}
    calexp_exp = calexp_butler.get('calexp', calexp_id)
    bbox = calexp_exp.getBBox()
    wcs = calexp_exp.getWcs()
    boundary = get_sky_boundary(bbox, wcs)
    min_ra = boundary['begin_ra']
    max_ra = boundary['end_ra']
    min_dec = boundary['begin_dec']
    max_dec = boundary['end_dec']
    # get sources from GCRCatalog
    # truth_type: 1 for galaxies, 2 for stars, and 3 for SNe
    # https://github.com/LSSTDESC/gcr-catalogs/blob/master/GCRCatalogs/SCHEMA.md
    quantities = ['ra', 'dec', 'patch', 'tract', 'redshift', 'mag_u', 'mag_g', 'mag_r', 'mag_i','mag_z', 'mag_y', 'truth_type', 'host_galaxy']
    source_cat = gc.get_quantities(quantities, filters=[f'mag_i <= 23', f'ra >= {min_ra}', f'ra <= {max_ra}', f'dec >= {min_dec}', f'dec <= {max_dec}'])
    bk_src = pd.DataFrame(source_cat)
    # save results
    save_path = os.path.join(save_dir, f'{visit}_{det}_run22i.csv')
    bk_src.to_csv(save_path, index=False)
    print(f'row id = {idx} is done')