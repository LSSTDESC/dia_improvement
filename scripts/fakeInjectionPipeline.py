import os
import pandas as pd

from lsst.daf.persistence import Butler
import injection_utils as iu

class FakeInjectionPipeline():
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
            
            for host_mag in self.host_mag_list:
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
                    
    def write_subtraction_script(self, diff_dir, config, file_path='./subtraction.sh'):
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

                            line = f'imageDifferenceDriver.py {fake_path} \\\n'
                            file.write(line)
                            line = f'    --output {diff_dir}/{patch}_{host_mag}_{visit}_{detector}_{filt}/diff_{fake_mag_str} \\\n'
                            file.write(line)
                            line = f'    --id visit={visit} detector={detector}  -C {config} \\\n'
                            file.write(line)
                            line = '    --clobber-config --clobber-versions --cores 4\n\n'
                            file.write(line)
        print(f'please run this file: {file_path}')
        
    def get_detection(self, diff_dir, flux_dir):
        os.makedirs(flux_dir, exist_ok=True)
        MISSED = -99999.
        HALF_WIDTH = 4
        COLUMNS = ['id', 'coord_ra', 'coord_dec', 
                   'base_NaiveCentroid_x', 'base_NaiveCentroid_y',
                   'base_PsfFlux_instFlux', 'base_PsfFlux_instFluxErr']
        for patch in self.patch_list:
            
            for host_mag in self.host_mag_list:
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
                        src_calib = src_butler.get('deepDiff_differenceExp_photoCalib', dataId=diff_id)
                        flux_injected_inst = src_calib.magnitudeToInstFlux(fake_mag)

                        detect_dict = {}
                        for col in COLUMNS:
                            detect_dict[col] = []

                        _, _, dia_list = iu.check_diaSrc_detecion(injection_coords, src_table, half_width=HALF_WIDTH)


                        for j in range(len(dia_list)):
                            if not dia_list[j]:
                                for col in COLUMNS:
                                    detect_dict[col].append(MISSED)

                            else:
                                detected_sources = dia_list[j].copy()
                                detected_sources.sort('base_PsfFlux_instFlux')
                                detected_sources.reverse()
                                for col in COLUMNS:
                                    detect_dict[col].append(detected_sources[0][col])
                        detect_dict['injected_x'] = injection_coords[:, 0]
                        detect_dict['injected_y'] = injection_coords[:, 1]
                        detect_dict['injected_flux'] = [flux_injected_inst for i in range(len(injection_coords[:, 0]))]
                        detect_df = pd.DataFrame(detect_dict)

                        save_path = os.path.join(flux_dir,
                                                 f'{patch}_{host_mag}_{visit}_{detector}_{filt}_{fake_mag_str}.csv')
                        detect_df.to_csv(save_path, index=False)




