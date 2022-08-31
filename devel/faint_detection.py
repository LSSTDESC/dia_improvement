import sqlite3
import pandas as pd
import fakeInjectionPipeline as fip

patch_list = ['00', '11', '22', '33', '44', '55', '66']
host_mag_list = ['20_21', '21_22', '22_23', '23_24', '24_25']
fake_mag_list = [23.0, 23.1, 23.2, 23.3, 23.4, 23.5, 23.6, 23.7, 23.8, 23.9, 24.0]
injection_db_path = './data/table/gal_4639/injection_coord.sqlite'

calexp_info_dict, injection_coord_dict = fip.get_calexp_injection_dict(
    patch_list, host_mag_list, dbpath=injection_db_path
)

fake_dir = f'./data/patch_0to6/injection_faint'

injector = fip.fakeInjectionPipeline(
    fake_dir = fake_dir, patch_list = patch_list,
    host_mag_list=host_mag_list, fake_mag_list=fake_mag_list,
    calexp_info_dict=calexp_info_dict, injection_coord_dict=injection_coord_dict
)

cf_type = 'al_default'
diff_dir =  f'./data/patch_0to6/diff_faint/{cf_type}'
flux_dir = f'./data/patch_0to6/diff_faint/{cf_type}/detection'
injector.get_detection(diff_dir=diff_dir, flux_dir=flux_dir, db_name=f'detection.sqlite')