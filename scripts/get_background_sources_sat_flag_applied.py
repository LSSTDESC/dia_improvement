# This script is compatible with desc-stack kernel.
from astropy.table import vstack, Table
import numpy as np
import pandas as pd
import sqlite3
import data_process_utils as dpu
from astropy import units as u
from astropy.coordinates import SkyCoord
from lsst.afw.table import BaseCatalog
from lsst.daf.persistence import Butler

# read files
image_table = Table.read('./data/table/gal_4639/image_info_20_21_m20.csv', format='ascii.csv')
conn = sqlite3.connect('./data/patch_0to6/diff/al_default_v23/detection/detection.sqlite')
save_path = './data/table/gal_4639/background_sources_sat_flag_applied.csv'

calexp_repo = '/global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-calexp-v1'
calexp_butler = Butler(calexp_repo)

# define flags
# 'base_NaiveCentroid_flag' could also be useful
sat_flags = ['base_PixelFlags_flag_saturated', 'base_PixelFlags_flag_saturatedCenter', 'base_PixelFlags_flag_suspect',
              'base_PixelFlags_flag_suspectCenter', 'base_PixelFlags_flag_offimage', 'base_PixelFlags_flag_edge',
              'base_PixelFlags_flag_bad']

matched_table = Table()
for row in image_table:
    diff_diaSrc = BaseCatalog.readFits(row['diaSrc_path'])
    diff_diaSrc_astropy = diff_diaSrc.asAstropy()
    diff_diaSrc_astropy = dpu.remove_flag_astropy(diff_diaSrc_astropy, flag_list=sat_flags)
    
    patch = str(row['patch'])
    patch = patch.replace(',', '')
    visit = int(row['visit'])
    det = int(row['detector'])
    filt = str(row['filter'])
    
    calexp_id = {'visit': visit, 'detector': det, 'filter': filt}
    calexp_src = calexp_butler.get('src', calexp_id)
    src_astropy = calexp_src.asAstropy()
    diaSrc_coord = SkyCoord(np.rad2deg(diff_diaSrc_astropy['coord_ra'].data),
                              np.rad2deg(diff_diaSrc_astropy['coord_dec'].data),
                              frame="icrs", unit="deg")
    src_coord = SkyCoord(np.rad2deg(src_astropy['coord_ra'].data),
                         np.rad2deg(src_astropy['coord_dec'].data),
                         frame="icrs", unit="deg")

    is_diaSrc, _ = dpu.two_direction_skymatch(src_coord, diaSrc_coord, radius=2 * u.arcsec)
    
    # match src to fake
    query = f"SELECT * FROM fake_src WHERE fake_mag = '20' AND host_mag = '20_21' AND patch = '{patch}' AND visit = {visit} AND detector = {det} And filter = '{filt}'"
    fake_src_df = pd.read_sql_query(query, conn)
    fake_astropy = Table.from_pandas(fake_src_df)
    fake_coord = SkyCoord(np.rad2deg(fake_astropy['coord_ra'].data),
                          np.rad2deg(fake_astropy['coord_dec'].data),
                          frame="icrs", unit="deg")
    is_fake, _ = dpu.two_direction_skymatch(src_coord, fake_coord, radius=2 * u.arcsec)
    
    t = Table()
    t['coord_ra'] = src_astropy['coord_ra']
    t['coord_dec'] = src_astropy['coord_dec']
    t['base_PsfFlux_instFlux'] = src_astropy['base_PsfFlux_instFlux']
    t['base_PsfFlux_instFluxErr'] = src_astropy['base_PsfFlux_instFluxErr']
    t['is_diaSrc'] =  is_diaSrc
    t['is_fake'] = is_fake
    
    matched_table = vstack([matched_table, t])
    
matched_table.write(save_path, format='ascii.csv', overwrite=True)