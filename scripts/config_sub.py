import fakeInjectionPipeline as fip

patch_list = ['00', '11', '22', '33', '44', '55', '66']
host_mag_list = ['20_21', '21_22', '22_23', '23_24', '24_25']
fake_mag_list = [20]
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

cf_type = 'al_preconv'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)

cf_type = 'al_decorr'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)

cf_type = 'al_convSci'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)

cf_type = 'al_convSciDecorr'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)

cf_type = 'al_spatial4'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)

cf_type = 'al_spatial4Pca'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)

cf_type = 'zogy_55'
config = f'./config/diffimConfig_{cf_type}.py'
file_path = f'./diff_{cf_type}.sh'
diff_dir =  f'./data/patch_0to6/diff/{cf_type}'
injector.get_subtraction_script(diff_dir , config=config, file_path=file_path, use_slurm=True)