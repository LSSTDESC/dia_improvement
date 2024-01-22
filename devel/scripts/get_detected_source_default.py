import lsst.afw.image as afwImage
import glob
import sqlite3
import pandas as pd


flux_db_path = ('/pscratch/sd/s/shl159/Cori/projects/fake_injection_v23/dia_improvement/devel/data'
                '/patch_0to6/diff/al_default_v23/detection/detection.sqlite')
conn = sqlite3.connect(flux_db_path)
full_query = 'SELECT * FROM fake_src'

diff_dir = ('/pscratch/sd/s/shl159/Cori/projects/fake_injection_v23/dia_improvement/devel/data'
            '/patch_0to6/diff/al_default_v23')
diffexp_path_pattern = '{diff_dir}/{patch}_{host_mag}_{visit}_{det}_{filt}/diff_{fake_mag}/deepDiff/*/*/diffexp*'

fake_src_full = pd.read_sql_query(full_query, conn)
detected_fake = fake_src_full.loc[fake_src_full.matched_status.astype(bool)]

mag_list, mag_err_list = [], []
for i, row in detected_fake.iterrows():
    visit = row['visit']
    det = row['detector']
    filt = row['filter']
    host_mag = row['host_mag']
    patch = row['patch']
    fake_mag = row['fake_mag']
    diffexp_path = glob.glob(
        diffexp_path_pattern.format(
            diff_dir=diff_dir, patch=patch, host_mag=host_mag,
            visit=visit, det=det, filt=filt, fake_mag=fake_mag)
    )[0]
    print(diffexp_path)
    diffexp = afwImage.ExposureF(diffexp_path)
    diff_photocalib = diffexp.getPhotoCalib()
    
    inst_flux = row['base_PsfFlux_instFlux']
    inst_flux_err = row['base_PsfFlux_instFluxErr']
    
    mag_result = diff_photocalib.instFluxToMagnitude(inst_flux, inst_flux_err)
    mag_list.append(mag_result.value)
    mag_err_list.append(mag_result.error)
    
new_table = detected_fake.copy()

new_table.loc[:, 'detected_mag'] = mag_list
new_table.loc[:, 'detected_mag_err'] = mag_err_list
new_table.to_csv('./data/table/gal_4639/detected_sources_default.csv', index=False)