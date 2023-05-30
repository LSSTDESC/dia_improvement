import sqlite3
import pandas as pd
import fakeInjectionPipeline_v23 as fi

patch_list = ['00', '11', '22', '33', '44', '55', '66']
host_mag_list = ['20_21', '21_22', '22_23', '23_24', '24_25']
fake_mag_list = [20, 23]
injection_db_path = './data/table/gal_4639/injection_coord.sqlite'

calexp_info_dict, injection_coord_dict = fi.get_calexp_injection_dict(
    patch_list, host_mag_list, dbpath=injection_db_path
)

fake_dir = f'./data/patch_0to6/injection'


injector = fi.fakeInjectionPipeline(
    fake_dir = fake_dir, patch_list = patch_list,
    host_mag_list=host_mag_list, fake_mag_list=fake_mag_list,
    calexp_info_dict=calexp_info_dict, injection_coord_dict=injection_coord_dict
)

for cf_type in ['al_spatial1_v23', 'al_spatial2_v23', 'al_spatial3_v23', 'al_spatial4_v23']:
    diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
    flux_dir = f'./data/patch_0to6/diff/{cf_type}/detection'
    injector.get_detection(diff_dir=diff_dir, flux_dir=flux_dir, db_name=f'detection.sqlite')