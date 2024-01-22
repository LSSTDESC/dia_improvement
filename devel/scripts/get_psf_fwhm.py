import glob
from lsst.daf.persistence import Butler
import lsst.afw.image as afwImage
from astropy.table import Table
import data_process_utils as dpu

# get calexp Butler
calexp_repo = '/global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-calexp-v1'
calexp_butler = Butler(calexp_repo)

# get coadd Butler
coadd_repo = '/global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-coadd-wfd-dr6-v1-grizy'
coadd_butler = Butler(coadd_repo)

# get exp psf width
coadd_psf_width_dict = {}
tract = 4639
filt = 'i'
for i in range(7):
    coadd_id = {'tract': tract, 'patch': f'{i},{i}', 'filter': filt}
    coadd_exp = coadd_butler.get('deepCoadd', coadd_id)
    coadd_psf_width = dpu.get_psf_width(coadd_exp, 'pixel')
    coadd_psf_width_dict[f'{i},{i}'] = coadd_psf_width

calexp_path_list = glob.glob(f'./data/patch_0to6/injection/*_20_21_*/fake_20/calexp/*/*/*.fits')
calexp_psf_width_list = []
coadd_psf_width_list = []
patch_list = []
visit_list = []
det_list = []
filt_list = []
diffexp_path_list = []
diaSrc_path_list = []

for calexp_path in calexp_path_list:
    calexp_exp = afwImage.ExposureF(calexp_path)
    calexp_psf_width = dpu.get_psf_width(calexp_exp, 'pixel')
    
    dir_name = calexp_path.split('/')[4]
    patch_ = dir_name.split('_')[0]
    patch = patch_[0] + ',' + patch_[0]
    visit = int(dir_name.split('_')[3])
    det = int(dir_name.split('_')[4])
    filt = str(dir_name.split('_')[5])
    coadd_psf_width = coadd_psf_width_dict[patch]
    diffexp_path = glob.glob(f'./data/patch_0to6/diff/al_default/{dir_name}/diff_20/deepDiff/*/*/diffexp*.fits')[0]
    diaSrc_path = glob.glob(f'./data/patch_0to6/diff/al_default/{dir_name}/diff_20/deepDiff/*/*/diaSrc*.fits')[0]
    
    calexp_psf_width_list.append(calexp_psf_width)
    coadd_psf_width_list.append(coadd_psf_width)
    patch_list.append(patch)
    visit_list.append(visit)
    det_list.append(det)
    filt_list.append(filt)
    diffexp_path_list.append(diffexp_path)
    diaSrc_path_list.append(diaSrc_path)
    
psf_table = Table()
psf_table['calexp_path'] = calexp_path_list
psf_table['calexp_fwhm'] = calexp_psf_width_list
psf_table['coadd_fwhm'] = coadd_psf_width_list
psf_table['tract'] = [tract for _ in range(len(psf_table))]
psf_table['patch'] = patch_list
psf_table['visit'] = visit_list
psf_table['detector'] = det_list
psf_table['filter'] = filt_list
psf_table['diffexp_path'] = diffexp_path_list
psf_table['diaSrc_path'] =  diaSrc_path_list

psf_table.write('./data/table/gal_4639/psf_fwhm.csv', format='ascii.csv')