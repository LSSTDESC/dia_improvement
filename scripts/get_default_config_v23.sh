#！/bin/bash

imageDifferenceDriver.py /global/cfs/projectdirs/lsst/production/DC2_ImSim/Run2.2i/desc_dm_drp/v19.0.0-v1/rerun/run2.2i-coadd-wfd-dr6-v1-grizy \
    --output ./tmpt_test_config \
    --id visit=965403 detector=160  -C ./config/diffimConfig_al_default_v23.py \
    --clobber-config --clobber-versions --cores 4 --show config > ./data/table/gal_4639/default_config_v23.txt 2>&1
    
rm -r ./tmpt_test_config
    
  