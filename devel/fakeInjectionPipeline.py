import os
import numpy as np
import pandas as pd
import sqlite3

from astropy.table import Table
import astropy.units as u
from lsst.daf.persistence import Butler
import injection_utils as iu
import data_process_utils as dpu

class fakeInjectionPipeline():
    """fake_dir, patch_list, host_mag_list, fake_mag_list, calexp_info_dict, injection_coord_dict
       
    patch_list:                a list of patch ids, e.g. patch_list = ['00', '01', '33']
    host_mag_list:             a list of host_mag, e.g. host_mag_list = ['17', 19_20', '20_21']      
    fake_mag_list:             a list of fake_mag, e.g. fake_mag_list = [19, 20, 21.4], must be int 
    calexp_info_dict:          key format: {patch}_{host_mag}
    injection_coord_dict:      key format: {patch}_{host_mag}_{visit}_{detector}_{filt}
    """
    def __init__(self, fake_dir, patch_list,
                 host_mag_list, fake_mag_list, calexp_info_dict, injection_coord_dict):
        self.COADD_REPO = ('/global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i'
                           '/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-coadd-wfd-dr6-v1-grizy')
        self.fake_dir = fake_dir
        self.patch_list = patch_list
        self.host_mag_list = host_mag_list
        self.fake_mag_list = fake_mag_list
        # a dict of dataframes, each row of the df has the visit, filt, detector information
        # of the calexp image
        self.calexp_info_dict = calexp_info_dict
        self.injection_coord_dict = injection_coord_dict
        self.KEYS = ['id', 'coord_ra', 'coord_dec', 'base_NaiveCentroid_x', 'base_NaiveCentroid_y',
                     'base_PsfFlux_instFlux', 'base_PsfFlux_instFluxErr',
                     'matched_status', 'injected_x','injected_y','injected_instFlux', 'fake_mag',
                     'visit', 'detector', 'filter']
        
    def make_fake_repo(self):
        for patch in self.patch_list:
            
            for host_mag in self.host_mag_list:
                calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']

                for index, row in calexp_info.iterrows():
                    visit = row['visit']
                    filt = row['filter']
                    detector = row['detector']

                    for fake_mag in self.fake_mag_list:
                        fake_mag_str = str(fake_mag).replace('.', '')
                        
                        fake_path = os.path.join(
                            self.fake_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/fake_{fake_mag_str}'
                        )
                        os.makedirs(fake_path)
                        calexp_path = os.path.join(
                            self.fake_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/fake_{fake_mag_str}/calexp'
                        )
                        os.makedirs(calexp_path)
                        yaml_path = os.path.join(
                            self.fake_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/fake_{fake_mag_str}/repositoryCfg.yaml'
                        )
                        with open(f'{yaml_path}', "w+") as file:
                            file.write("!RepositoryCfg_v1\n")
                            file.write("_mapper: !!python/name:lsst.obs.lsst.imsim.ImsimMapper \'\'\n")
                            file.write("_mapperArgs: {}\n")
                            file.write("_parents:\n")
                            file.write(f"- {self.COADD_REPO}\n")
                            file.write("_policy: null\n")
                            file.write("_root: null\n")
                            file.write("dirty: true\n")
                        
    def inject_fakes(self, poisson=False):
        for patch in self.patch_list:
            print('patch: ', patch)
            
            for host_mag in self.host_mag_list:
                print('host mag: ', host_mag)
                calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']

                for index, row in calexp_info.iterrows():
                    visit = row['visit']
                    filt = row['filter']
                    detector = row['detector']

                    injection_coords = self.injection_coord_dict[f'{patch}_{host_mag}_{visit}_{detector}_{filt}']
                    for fake_mag in self.fake_mag_list:
                        fake_mag_str = str(fake_mag).replace('.', '')

                        calexp_repo = os.path.join(
                                self.fake_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/fake_{fake_mag_str}'
                            )
                        calexp_id = {'visit': visit, 'detector': detector, 'filter': filt}
                        iu.inject_fakes_to_calexp(calexp_repo, calexp_id, fake_mag, injection_coords, poisson=poisson)
            print('\n')
        print('injection is done')
                    
    def get_subtraction_script(self, diff_dir, config, file_path='./subtraction.sh', use_slurm=False):
        with open(f'{file_path}', "w+") as file:
            file.write('#！/bin/bash\n\n')
            for patch in self.patch_list:
                
                for host_mag in self.host_mag_list:
                    calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']

                    for index, row in calexp_info.iterrows():
                        visit = row['visit']
                        filt = row['filter']
                        detector = row['detector']

                        for fake_mag in self.fake_mag_list:
                            fake_mag_str = str(fake_mag).replace('.', '')
                            
                            fake_path = os.path.join(
                                self.fake_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/fake_{fake_mag_str}'
                            )

                            line = f"imageDifferenceDriver.py {fake_path} \\\n"
                            file.write(line)
                            line = f"    --output {diff_dir}/{patch}_{host_mag}_{visit}_{detector}_{filt}/diff_{fake_mag_str} \\\n"
                            file.write(line)
                            line = f"    --id visit={visit} detector={detector}  -C {config} \\\n"
                            file.write(line)
                            if use_slurm:
                                line = "    --clobber-config --clobber-versions --cores 1 \\\n"
                                file.write(line)
                                line = "    --batch-type=slurm \\\n"
                                file.write(line)
                                line = "    --time 5000 \\\n"
                                file.write(line)
                                line = "    --mpiexec='-bind-to socket' \\\n"
                                file.write(line)
                                line = "    --batch-output logs_folder \\\n"
                                file.write(line)
                                line = "    --batch-options='-C haswell -q shared'\n\n"
                                file.write(line)
                            else:
                                line = "    --clobber-config --clobber-versions --cores 4\n\n"
                                file.write(line)
        print(f'please run this file: {file_path}')
        
    def get_detection(self, diff_dir, flux_dir, matched_radius = 4, db_name='detection.sqlite'):
        fake_src_name='fake_src'
        artifact_name='artifact'
        os.makedirs(flux_dir, exist_ok=True)

        dbpath = os.path.join(flux_dir, db_name)
        dbconn = sqlite3.connect(dbpath, timeout=60)
        for patch in self.patch_list:
            print('patch: ', patch)
            
            for host_mag in self.host_mag_list:
                print('host mag: ', host_mag)
                calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']
                
                for index, row in calexp_info.iterrows():
                    visit = row['visit']
                    filt = row['filter']
                    detector = row['detector']
                    diff_id = {'visit': visit, 'detector': detector, 'filter': filt}

                    injection_coords = self.injection_coord_dict[f'{patch}_{host_mag}_{visit}_{detector}_{filt}']
                    for fake_mag in self.fake_mag_list:
                        fake_mag_str = str(fake_mag).replace('.', '')

                        src_repo = os.path.join(
                            diff_dir,  f'{patch}_{host_mag}_{visit}_{detector}_{filt}/diff_{fake_mag_str}'
                        )
                        src_butler = Butler(src_repo)
                        src_table = src_butler.get('deepDiff_diaSrc', dataId=diff_id)
                        src_table = src_table.asAstropy()
                        src_df = src_table.to_pandas()
                        src_count = len(src_df)
                        src_df.loc[:, 'visit'] = np.repeat(visit, src_count)
                        src_df.loc[:, 'detector'] = np.repeat(detector, src_count)
                        src_df.loc[:, 'filter'] = np.repeat(filt, src_count)
                        src_df.loc[:, 'fake_mag'] = np.repeat(fake_mag_str, src_count)
                        src_df.loc[:, 'host_mag'] = np.repeat(host_mag, src_count) 
                        src_df.loc[:, 'patch'] = np.repeat(patch, src_count)
                        
                        src_xy = src_df[['base_NaiveCentroid_x', 'base_NaiveCentroid_y']].to_numpy()
                        
                        src_calib = src_butler.get('deepDiff_differenceExp_photoCalib', dataId=diff_id)
                        flux_injected_inst = src_calib.magnitudeToInstFlux(fake_mag)
                        
                        matched_status, matched_id = dpu.two_direction_match(injection_coords, src_xy, radius=matched_radius)
                        matched_table = src_df.iloc[matched_id].copy()
                        matched_table.loc[:, 'matched_status'] = matched_status
                        matched_table.loc[:, 'injected_x'] = injection_coords[:, 0]
                        matched_table.loc[:, 'injected_y'] = injection_coords[:, 1]
                        matched_table.loc[:, 'injected_instFlux'] = np.repeat(flux_injected_inst, len(matched_status))
                        
                        fake_id = matched_id[matched_status]
                        artifact_table = src_df.drop(index=fake_id, inplace=False)
                        
                        diff_exp = src_butler.get('deepDiff_differenceExp', diff_id)
                        bbox = diff_exp.getBBox()
                        wcs = diff_exp.getWcs()
                        
                        artifact_table = dpu.remove_variable(artifact_table, bbox, wcs, matched_radius=4)
                        
                        matched_table.to_sql(fake_src_name, dbconn, if_exists='append')
                        artifact_table.to_sql(artifact_name, dbconn, if_exists='append')
            print('\n')
        print(f"detection results are saved in {flux_dir}/{db_name}")
        print(f'{fake_src_name} contains the fake information, and {artifact_name} contains the artifact information')
                        
    def get_detection_coord(self, flux_db_path, coord_dir):
        flux_conn = sqlite3.connect(flux_db_path)

        for patch in self.patch_list:
            
            for host_mag in self.host_mag_list:
                calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']

                for index, row in calexp_info.iterrows():
                    visit = row['visit']
                    filt = row['filter']
                    detector = row['detector']
                    
                    dir_path = os.path.join(coord_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}')
                    os.makedirs(dir_path, exist_ok=True)

                    for fake_mag in self.fake_mag_list:
                        fake_mag_str = str(fake_mag).replace('.', '')
                        flux_query = (
                            f'SELECT id, coord_ra, coord_dec, base_NaiveCentroid_x, base_NaiveCentroid_y, '
                            f'base_PsfFlux_instFlux, base_PsfFlux_instFluxErr, injected_instFlux, '
                            f'patch, visit, filter, detector, '
                            f'host_mag, fake_mag, matched_status FROM fake_src '
                            f"WHERE patch='{patch}' AND host_mag = '{host_mag}' AND fake_mag = '{fake_mag_str}' "
                            f"AND visit = {visit} AND filter = '{filt}' AND detector = {detector} AND matched_status = 1"
                            )
                        detected_coord = pd.read_sql_query(flux_query, flux_conn)
                        coord_table = Table.from_pandas(detected_coord)
                        coord_table['coord_ra'] = coord_table['coord_ra'] * u.rad
                        coord_table['coord_dec'] = coord_table['coord_dec'] * u.rad
                        save_name = f'coord_{fake_mag_str}.fits'
                        save_path = os.path.join(
                            dir_path, save_name
                            )
                        coord_table.write(save_path, format='fits', overwrite=True)
        print(f'forced photometry coordinates are saved in {coord_dir}')
                        
    def get_forced_phot_script(self, diff_dir, coord_dir, forced_dir, config, file_path='./forcd.sh'):
        with open(f'{file_path}', "w+") as file:
            for patch in self.patch_list:
                print('patch: ', patch)
                
                for host_mag in self.host_mag_list:
                    print('host mag: ', host_mag)
                    calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']

                    for index, row in calexp_info.iterrows():
                        visit = row['visit']
                        filt = row['filter']
                        detector = row['detector']
                        
                        for fake_mag in self.fake_mag_list:
                            fake_mag_str = str(fake_mag).replace('.', '')
                            
                            fake_path = os.path.join(
                                self.fake_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/fake_{fake_mag_str}'
                            )
                            
                            diff_path = os.path.join(
                                diff_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/diff_{fake_mag_str}'
                            )
                            
                            coord_path = os.path.join(
                                coord_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/coord_{fake_mag_str}.fits'
                            )
                            
                            forced_path = os.path.join(
                                forced_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/forced_{fake_mag_str}'
                            )
                            
                            line = f'forcedPhotCatalogDia.py {fake_path} \\\n'
                            file.write(line)
                            line = f'    --output {diff_path} \\\n'
                            file.write(line)
                            line = f'    --id visit={visit} detector={detector} \\\n'
                            file.write(line)
                            line = f'    -c catalogName={coord_path} outputDir={forced_path} -C {config} \\\n'
                            file.write(line)
                            line = '    --clobber-versions --clobber-config\n\n'
                            file.write(line)
                print('\n')
        print(f'please run this file: {file_path}')
        
    def get_forced_db(self, coord_dir, forced_dir, db_name='forced.sqlite'):
        """base_PsfFlux_instFlux_diaSrc, base_PsfFlux_instFlux_forced, injected_instFlux
        """
        dbpath = os.path.join(forced_dir, db_name)
        dbconn = sqlite3.connect(dbpath, timeout=60)
        joint_full = pd.DataFrame()
        for patch in self.patch_list:
            for host_mag in self.host_mag_list:
                calexp_info = self.calexp_info_dict[f'{patch}_{host_mag}']
                for index, row in calexp_info.iterrows():
                    visit = row['visit']
                    filt = row['filter']
                    detector = row['detector']
                    for fake_mag in self.fake_mag_list:
                        fake_mag_str = str(fake_mag).replace('.', '')
                        coord_path = os.path.join(
                                coord_dir, f'{patch}_{host_mag}_{visit}_{detector}_{filt}/coord_{fake_mag_str}.fits'
                            )
                        forced_path = os.path.join(
                            forced_dir,
                            f'{patch}_{host_mag}_{visit}_{detector}_{filt}/forced_{fake_mag_str}/forced_{visit}_{detector}.fits'
                        )
                        coord_table = Table.read(coord_path, format='fits')
                        forced_table = Table.read(forced_path, format='fits')
                        table_len = len(forced_table)
                        forced_table.remove_columns(['flags'])
                        
                        coord_df = coord_table.to_pandas()
                        forced_df = forced_table.to_pandas()
                        joint_df = coord_df.merge(forced_df, left_on='id', right_on='dia_object_id', suffixes=('_diaSrc', '_forced'))
                        joint_full = joint_full.append(joint_df)
        joint_full.to_sql('forced', dbconn, if_exists='append')
