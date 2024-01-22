import sqlite3
import pandas as pd
import fakeInjectionPipeline as fip

patch_list = ['00', '11', '22', '33', '44', '55', '66']
host_mag_list = ['20_21', '21_22', '22_23', '23_24', '24_25']
fake_mag_list = [20, 21, 22, 23, 24]
injection_db_path = './data/table/gal_4639/injection_coord.sqlite'

calexp_info_dict, injection_coord_dict = fip.get_calexp_injection_dict(
    patch_list, host_mag_list, dbpath=injection_db_path
)

fake_dir = f'./data/patch_0to6/injection'

injector = fip.fakeInjectionPipeline(
    fake_dir = fake_dir, patch_list = patch_list,
    host_mag_list=host_mag_list, fake_mag_list=fake_mag_list,
    calexp_info_dict=calexp_info_dict, injection_coord_dict=injection_coord_dict
)

cf_type = 'default'
coord_dir = f'./data/patch_0to6/diff/al_{cf_type}/coord'
forced_dir = f'./data/patch_0to6/diff/al_{cf_type}/forced'
injector.get_forced_db(coord_dir, forced_dir, db_name='forced.sqlite')