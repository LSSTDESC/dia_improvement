from lsst.daf.persistence import Butler

# save coadd exposures to local disc for future analysis
coadd_repo = '/global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-coadd-wfd-dr6-v1-grizy'
coadd_butler = Butler(coadd_repo)
tract, filt = 4639, 'i'
for i in range(7):
    coadd_id = {'tract': tract, 'patch': f'{i},{i}', 'filter': filt}
    coadd_exp = coadd_butler.get('deepCoadd', coadd_id)
    # need to create path before writing fits files
    coadd_exp.writeFits(f'./data/patch_0to6/coadd/coadd_4639_{i}{i}.fits')