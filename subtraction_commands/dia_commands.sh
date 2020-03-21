
# Configurations that failed
#              --config imageDifference.doPreconvolve=True \
#              --config doWriteSubtractedExp=True \
#              --config doWriteMatchedExp=True \
#              --config doDecorrelation=False \
#              --config doSpatiallyVarying=False \
#                --config imageDifference.writeTemplate=True \
# TEST AA
time nice -10 imageDifferenceDriver.py  \
                $SCRATCH/templates_rect \
                --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_AL_AA \
                --id visit=400390 detector=157 \
                -C ./configs/imageDifferenceDriver_config.py \
                --config imageDifference.doDecorrelation=False \
                --config imageDifference.convolveTemplate=False \
                --batch-type=smp \
                --mpiexec='-bind-to socket' \
                --cores 4 --job sub_v400390_AL_AA \
                --time 500 \
                --clobber-versions \
                --clobber-config \
                --batch-options='-C knl -q regular' > \
                    ./outputs/output_AL_AA.txt
 
# TEST BA
time nice -10 imageDifferenceDriver.py  \
              $SCRATCH/templates_rect \
              --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_AL_BA \
              --id visit=400390 detector=157 \
              -C ./configs/imageDifferenceDriver_config.py \
              --config imageDifference.doDecorrelation=True \
              --config imageDifference.convolveTemplate=False \
              --batch-type=smp \
              --mpiexec='-bind-to socket' \
              --cores 4 --job sub_v400390_AL_BA \
              --time 500 \
              --clobber-versions \
              --clobber-config \
              --batch-options='-C knl -q regular' > \
                  ./outputs/output_AL_BA.txt
 

# TEST AB
time nice -10 imageDifferenceDriver.py  \
                $SCRATCH/templates_rect \
                --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_AL_AB \
                --id visit=400390 detector=157 \
                -C ./configs/imageDifferenceDriver_config.py \
                --config imageDifference.doDecorrelation=False \
                --config imageDifference.convolveTemplate=True \
                --batch-type=smp \
                --mpiexec='-bind-to socket' \
                --cores 4 --job sub_v400390_AL_AB \
                --time 500 \
                --clobber-versions \
                --clobber-config \
                --batch-options='-C knl -q regular' > \
                    ./outputs/output_AL_AB.txt
 
# TEST BB
time nice -10 imageDifferenceDriver.py  \
              $SCRATCH/templates_rect \
              --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_AL_BB \
              --id visit=400390 detector=157 \
              -C ./configs/imageDifferenceDriver_config.py \
              --config imageDifference.doDecorrelation=True \
              --config imageDifference.convolveTemplate=True \
              --batch-type=smp \
              --mpiexec='-bind-to socket' \
              --cores 4 --job sub_v400390_AL_BB \
              --time 500 \
              --clobber-versions \
              --clobber-config \
              --batch-options='-C knl -q regular' > \
                  ./outputs/output_AL_BB.txt
 




## ZOGY tests
# TEST AA
time nice -10 imageDifferenceDriver.py  \
                $SCRATCH/templates_rect \
                --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_Z_AA \
                --id visit=400390 detector=157 \
                -C ./configs/imageDifferenceDriver_config.py \
                --config imageDifference.subtract='zogy' \
                --config imageDifference.doDecorrelation=False \
                --config imageDifference.convolveTemplate=True \
                --batch-type=smp \
                --mpiexec='-bind-to socket' \
                --cores 4 --job sub_v400390_Z_AA \
                --time 500 \
                --clobber-versions \
                --clobber-config \
                --batch-options='-C knl -q regular' > \
                    ./outputs/output_Z_AA.txt
 
# TEST B
time nice -10 imageDifferenceDriver.py  \
              $SCRATCH/templates_rect \
              --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_Z_BA \
              --id visit=400390 detector=157 \
              -C ./configs/imageDifferenceDriver_config.py \
              --config imageDifference.subtract='zogy' \
              --config imageDifference.doDecorrelation=True \
              --config imageDifference.convolveTemplate=True \
              --batch-type=smp \
              --mpiexec='-bind-to socket' \
              --cores 4 --job sub_v400390_Z_BA \
              --time 500 \
              --clobber-versions \
              --clobber-config \
              --batch-options='-C knl -q regular' > \
                  ./outputs/output_Z_BA.txt

# TEST A
time nice -10 imageDifferenceDriver.py  \
                $SCRATCH/templates_rect \
                --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_Z_AB \
                --id visit=400390 detector=157 \
                -C ./configs/imageDifferenceDriver_config.py \
                --config imageDifference.subtract='zogy' \
                --config imageDifference.doDecorrelation=False \
                --config imageDifference.convolveTemplate=True \
                --batch-type=smp \
                --mpiexec='-bind-to socket' \
                --cores 4 --job sub_v400390_Z_AB \
                --time 500 \
                --clobber-versions \
                --clobber-config \
                --batch-options='-C knl -q regular' > \
                    ./outputs/output_Z_AB.txt
 
# TEST B
time nice -10 imageDifferenceDriver.py  \
              $SCRATCH/templates_rect \
              --output /global/cfs/cdirs/desc-sn/dia/data/bos0109/test_subtractions/test_Z_BB \
              --id visit=400390 detector=157 \
              -C ./configs/imageDifferenceDriver_config.py \
              --config imageDifference.subtract='zogy' \
              --config imageDifference.doDecorrelation=True \
              --config imageDifference.convolveTemplate=True \
              --batch-type=smp \
              --mpiexec='-bind-to socket' \
              --cores 4 --job sub_v400390_Z_BB \
              --time 500 \
              --clobber-versions \
              --clobber-config \
              --batch-options='-C knl -q regular' > \
                  ./outputs/output_Z_BB.txt



