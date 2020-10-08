#！/bin/bash

imageDifferenceDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/gal_205 \
    --output /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_205 \
    --id visit=1228976 detector=8  -C diffimConfig_al-bright.py \
    --clobber-config --clobber-versions --cores 4
imageDifferenceDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/gal_210 \
    --output /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_210 \
    --id visit=1228976 detector=8  -C diffimConfig_al-bright.py \
    --clobber-config --clobber-versions --cores 4
imageDifferenceDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/gal_215 \
    --output /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_215 \
    --id visit=1228976 detector=8  -C diffimConfig_al-bright.py \
    --clobber-config --clobber-versions --cores 4
imageDifferenceDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/gal_220 \
    --output /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_220 \
    --id visit=1228976 detector=8  -C diffimConfig_al-bright.py \
    --clobber-config --clobber-versions --cores 4

associationDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_205 \
    --rerun association \
    --id tract=2900 filter=r --selectId visit=1228976 --cores 4 --batch-type=smp \
    --clobber-config --clobber-versions --cores 4
associationDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_210 \
    --rerun association \
    --id tract=2900 filter=r --selectId visit=1228976 --cores 4 --batch-type=smp \
    --clobber-config --clobber-versions --cores 4
associationDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_215 \
    --rerun association \
    --id tract=2900 filter=r --selectId visit=1228976 --cores 4 --batch-type=smp \
    --clobber-config --clobber-versions --cores 4
associationDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_220 \
    --rerun association \
    --id tract=2900 filter=r --selectId visit=1228976 --cores 4 --batch-type=smp \
    --clobber-config --clobber-versions --cores 4

forcedPhotCcdDiaDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_205/rerun/association \
    --rerun forced \
    --id visit=1228976 --cores 10 --clobber-config --clobber-versions \
    --time 100 --batch-options='-C knl -q regular'
forcedPhotCcdDiaDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_210/rerun/association \
    --rerun forced \
    --id visit=1228976 --cores 10 --clobber-config --clobber-versions \
    --time 100 --batch-options='-C knl -q regular'
forcedPhotCcdDiaDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_215/rerun/association \
    --rerun forced \
    --id visit=1228976 --cores 10 --clobber-config --clobber-versions \
    --time 100 --batch-options='-C knl -q regular'
forcedPhotCcdDiaDriver.py /global/cfs/cdirs/desc-sn/dia/data/shl159/fake_injection/flux_offset/data/al_220/rerun/association \
    --rerun forced \
    --id visit=1228976 --cores 10 --clobber-config --clobber-versions \
    --time 100 --batch-options='-C knl -q regular'
