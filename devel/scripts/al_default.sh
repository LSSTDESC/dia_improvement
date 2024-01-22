#！/bin/bash

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1013665_79_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1013665_79_i/diff_205 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1013665_79_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1013665_79_i/diff_215 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1013665_79_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1013665_79_i/diff_225 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1013665_79_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1013665_79_i/diff_235 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_906936_117_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_906936_117_i/diff_205 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_906936_117_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_906936_117_i/diff_215 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_906936_117_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_906936_117_i/diff_225 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_906936_117_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_906936_117_i/diff_235 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_174602_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_174602_82_i/diff_205 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_174602_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_174602_82_i/diff_215 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_174602_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_174602_82_i/diff_225 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_174602_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_174602_82_i/diff_235 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_204594_113_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_204594_113_i/diff_205 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_204594_113_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_204594_113_i/diff_215 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_204594_113_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_204594_113_i/diff_225 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_204594_113_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_204594_113_i/diff_235 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_682811_5_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_682811_5_i/diff_205 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_682811_5_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_682811_5_i/diff_215 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_682811_5_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_682811_5_i/diff_225 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_682811_5_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_682811_5_i/diff_235 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1229686_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1229686_20_i/diff_205 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1229686_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1229686_20_i/diff_215 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1229686_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1229686_20_i/diff_225 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1229686_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1229686_20_i/diff_235 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_915757_119_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_915757_119_i/diff_205 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_915757_119_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_915757_119_i/diff_215 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_915757_119_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_915757_119_i/diff_225 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_915757_119_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_915757_119_i/diff_235 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1165787_183_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1165787_183_i/diff_205 \
    --id visit=1165787 detector=183  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1165787_183_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1165787_183_i/diff_215 \
    --id visit=1165787 detector=183  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1165787_183_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1165787_183_i/diff_225 \
    --id visit=1165787 detector=183  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1165787_183_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1165787_183_i/diff_235 \
    --id visit=1165787 detector=183  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_945706_83_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_945706_83_i/diff_205 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_945706_83_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_945706_83_i/diff_215 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_945706_83_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_945706_83_i/diff_225 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_945706_83_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_945706_83_i/diff_235 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1185854_13_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1185854_13_i/diff_205 \
    --id visit=1185854 detector=13  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1185854_13_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1185854_13_i/diff_215 \
    --id visit=1185854 detector=13  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1185854_13_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1185854_13_i/diff_225 \
    --id visit=1185854 detector=13  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_20_21_1185854_13_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_20_21_1185854_13_i/diff_235 \
    --id visit=1185854 detector=13  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1231329_179_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1231329_179_i/diff_205 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1231329_179_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1231329_179_i/diff_215 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1231329_179_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1231329_179_i/diff_225 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1231329_179_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1231329_179_i/diff_235 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229644_130_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229644_130_i/diff_205 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229644_130_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229644_130_i/diff_215 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229644_130_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229644_130_i/diff_225 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229644_130_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229644_130_i/diff_235 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_428495_120_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_428495_120_i/diff_205 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_428495_120_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_428495_120_i/diff_215 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_428495_120_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_428495_120_i/diff_225 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_428495_120_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_428495_120_i/diff_235 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1013665_79_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1013665_79_i/diff_205 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1013665_79_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1013665_79_i/diff_215 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1013665_79_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1013665_79_i/diff_225 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1013665_79_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1013665_79_i/diff_235 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_915757_119_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_915757_119_i/diff_205 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_915757_119_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_915757_119_i/diff_215 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_915757_119_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_915757_119_i/diff_225 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_915757_119_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_915757_119_i/diff_235 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229686_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229686_20_i/diff_205 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229686_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229686_20_i/diff_215 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229686_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229686_20_i/diff_225 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_1229686_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_1229686_20_i/diff_235 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_174602_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_174602_82_i/diff_205 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_174602_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_174602_82_i/diff_215 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_174602_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_174602_82_i/diff_225 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_174602_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_174602_82_i/diff_235 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_945706_83_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_945706_83_i/diff_205 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_945706_83_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_945706_83_i/diff_215 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_945706_83_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_945706_83_i/diff_225 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_945706_83_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_945706_83_i/diff_235 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_906936_117_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_906936_117_i/diff_205 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_906936_117_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_906936_117_i/diff_215 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_906936_117_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_906936_117_i/diff_225 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_906936_117_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_906936_117_i/diff_235 \
    --id visit=906936 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_204594_113_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_204594_113_i/diff_205 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_204594_113_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_204594_113_i/diff_215 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_204594_113_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_204594_113_i/diff_225 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_21_22_204594_113_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_21_22_204594_113_i/diff_235 \
    --id visit=204594 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1231329_179_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1231329_179_i/diff_205 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1231329_179_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1231329_179_i/diff_215 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1231329_179_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1231329_179_i/diff_225 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1231329_179_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1231329_179_i/diff_235 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229686_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229686_20_i/diff_205 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229686_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229686_20_i/diff_215 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229686_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229686_20_i/diff_225 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229686_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229686_20_i/diff_235 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1013665_79_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1013665_79_i/diff_205 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1013665_79_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1013665_79_i/diff_215 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1013665_79_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1013665_79_i/diff_225 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1013665_79_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1013665_79_i/diff_235 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_174602_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_174602_82_i/diff_205 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_174602_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_174602_82_i/diff_215 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_174602_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_174602_82_i/diff_225 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_174602_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_174602_82_i/diff_235 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229644_130_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229644_130_i/diff_205 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229644_130_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229644_130_i/diff_215 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229644_130_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229644_130_i/diff_225 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1229644_130_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1229644_130_i/diff_235 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_421694_76_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_421694_76_i/diff_205 \
    --id visit=421694 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_421694_76_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_421694_76_i/diff_215 \
    --id visit=421694 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_421694_76_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_421694_76_i/diff_225 \
    --id visit=421694 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_421694_76_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_421694_76_i/diff_235 \
    --id visit=421694 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1196403_137_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1196403_137_i/diff_205 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1196403_137_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1196403_137_i/diff_215 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1196403_137_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1196403_137_i/diff_225 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_1196403_137_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_1196403_137_i/diff_235 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_915757_119_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_915757_119_i/diff_205 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_915757_119_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_915757_119_i/diff_215 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_915757_119_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_915757_119_i/diff_225 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_915757_119_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_915757_119_i/diff_235 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_945706_83_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_945706_83_i/diff_205 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_945706_83_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_945706_83_i/diff_215 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_945706_83_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_945706_83_i/diff_225 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_945706_83_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_945706_83_i/diff_235 \
    --id visit=945706 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_693452_71_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_693452_71_i/diff_205 \
    --id visit=693452 detector=71  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_693452_71_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_693452_71_i/diff_215 \
    --id visit=693452 detector=71  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_693452_71_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_693452_71_i/diff_225 \
    --id visit=693452 detector=71  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_22_23_693452_71_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_22_23_693452_71_i/diff_235 \
    --id visit=693452 detector=71  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_174602_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_174602_82_i/diff_205 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_174602_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_174602_82_i/diff_215 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_174602_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_174602_82_i/diff_225 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_174602_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_174602_82_i/diff_235 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_915757_119_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_915757_119_i/diff_205 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_915757_119_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_915757_119_i/diff_215 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_915757_119_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_915757_119_i/diff_225 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_915757_119_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_915757_119_i/diff_235 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_976318_62_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_976318_62_i/diff_205 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_976318_62_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_976318_62_i/diff_215 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_976318_62_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_976318_62_i/diff_225 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_976318_62_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_976318_62_i/diff_235 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229686_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229686_20_i/diff_205 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229686_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229686_20_i/diff_215 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229686_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229686_20_i/diff_225 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229686_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229686_20_i/diff_235 \
    --id visit=1229686 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_464231_34_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_464231_34_i/diff_205 \
    --id visit=464231 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_464231_34_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_464231_34_i/diff_215 \
    --id visit=464231 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_464231_34_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_464231_34_i/diff_225 \
    --id visit=464231 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_464231_34_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_464231_34_i/diff_235 \
    --id visit=464231 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1013665_79_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1013665_79_i/diff_205 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1013665_79_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1013665_79_i/diff_215 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1013665_79_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1013665_79_i/diff_225 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1013665_79_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1013665_79_i/diff_235 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_682811_5_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_682811_5_i/diff_205 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_682811_5_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_682811_5_i/diff_215 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_682811_5_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_682811_5_i/diff_225 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_682811_5_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_682811_5_i/diff_235 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1196403_137_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1196403_137_i/diff_205 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1196403_137_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1196403_137_i/diff_215 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1196403_137_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1196403_137_i/diff_225 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1196403_137_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1196403_137_i/diff_235 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229644_130_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229644_130_i/diff_205 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229644_130_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229644_130_i/diff_215 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229644_130_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229644_130_i/diff_225 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1229644_130_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1229644_130_i/diff_235 \
    --id visit=1229644 detector=130  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1231329_179_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1231329_179_i/diff_205 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1231329_179_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1231329_179_i/diff_215 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1231329_179_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1231329_179_i/diff_225 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_23_24_1231329_179_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_23_24_1231329_179_i/diff_235 \
    --id visit=1231329 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_915757_119_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_915757_119_i/diff_205 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_915757_119_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_915757_119_i/diff_215 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_915757_119_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_915757_119_i/diff_225 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_915757_119_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_915757_119_i/diff_235 \
    --id visit=915757 detector=119  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_976318_62_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_976318_62_i/diff_205 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_976318_62_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_976318_62_i/diff_215 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_976318_62_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_976318_62_i/diff_225 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_976318_62_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_976318_62_i/diff_235 \
    --id visit=976318 detector=62  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682810_79_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682810_79_i/diff_205 \
    --id visit=682810 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682810_79_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682810_79_i/diff_215 \
    --id visit=682810 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682810_79_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682810_79_i/diff_225 \
    --id visit=682810 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682810_79_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682810_79_i/diff_235 \
    --id visit=682810 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1196403_137_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1196403_137_i/diff_205 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1196403_137_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1196403_137_i/diff_215 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1196403_137_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1196403_137_i/diff_225 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1196403_137_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1196403_137_i/diff_235 \
    --id visit=1196403 detector=137  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1209192_104_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1209192_104_i/diff_205 \
    --id visit=1209192 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1209192_104_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1209192_104_i/diff_215 \
    --id visit=1209192 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1209192_104_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1209192_104_i/diff_225 \
    --id visit=1209192 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1209192_104_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1209192_104_i/diff_235 \
    --id visit=1209192 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1013665_79_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1013665_79_i/diff_205 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1013665_79_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1013665_79_i/diff_215 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1013665_79_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1013665_79_i/diff_225 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1013665_79_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1013665_79_i/diff_235 \
    --id visit=1013665 detector=79  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682811_5_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682811_5_i/diff_205 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682811_5_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682811_5_i/diff_215 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682811_5_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682811_5_i/diff_225 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_682811_5_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_682811_5_i/diff_235 \
    --id visit=682811 detector=5  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_174602_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_174602_82_i/diff_205 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_174602_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_174602_82_i/diff_215 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_174602_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_174602_82_i/diff_225 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_174602_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_174602_82_i/diff_235 \
    --id visit=174602 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1229685_8_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1229685_8_i/diff_205 \
    --id visit=1229685 detector=8  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1229685_8_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1229685_8_i/diff_215 \
    --id visit=1229685 detector=8  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1229685_8_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1229685_8_i/diff_225 \
    --id visit=1229685 detector=8  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_1229685_8_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_1229685_8_i/diff_235 \
    --id visit=1229685 detector=8  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_428495_120_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_428495_120_i/diff_205 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_428495_120_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_428495_120_i/diff_215 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_428495_120_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_428495_120_i/diff_225 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/00_24_25_428495_120_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/00_24_25_428495_120_i/diff_235 \
    --id visit=428495 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_204560_109_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_204560_109_i/diff_205 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_204560_109_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_204560_109_i/diff_215 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_204560_109_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_204560_109_i/diff_225 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_204560_109_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_204560_109_i/diff_235 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_976165_105_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_976165_105_i/diff_205 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_976165_105_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_976165_105_i/diff_215 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_976165_105_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_976165_105_i/diff_225 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_976165_105_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_976165_105_i/diff_235 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1229686_22_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1229686_22_i/diff_205 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1229686_22_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1229686_22_i/diff_215 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1229686_22_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1229686_22_i/diff_225 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1229686_22_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1229686_22_i/diff_235 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_421694_80_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_421694_80_i/diff_205 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_421694_80_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_421694_80_i/diff_215 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_421694_80_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_421694_80_i/diff_225 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_421694_80_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_421694_80_i/diff_235 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_898791_131_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_898791_131_i/diff_205 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_898791_131_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_898791_131_i/diff_215 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_898791_131_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_898791_131_i/diff_225 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_898791_131_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_898791_131_i/diff_235 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_478974_146_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_478974_146_i/diff_205 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_478974_146_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_478974_146_i/diff_215 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_478974_146_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_478974_146_i/diff_225 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_478974_146_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_478974_146_i/diff_235 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_211472_122_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_211472_122_i/diff_205 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_211472_122_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_211472_122_i/diff_215 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_211472_122_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_211472_122_i/diff_225 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_211472_122_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_211472_122_i/diff_235 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1157696_32_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1157696_32_i/diff_205 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1157696_32_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1157696_32_i/diff_215 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1157696_32_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1157696_32_i/diff_225 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_1157696_32_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_1157696_32_i/diff_235 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_437352_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_437352_45_i/diff_205 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_437352_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_437352_45_i/diff_215 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_437352_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_437352_45_i/diff_225 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_437352_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_437352_45_i/diff_235 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_512005_155_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_512005_155_i/diff_205 \
    --id visit=512005 detector=155  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_512005_155_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_512005_155_i/diff_215 \
    --id visit=512005 detector=155  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_512005_155_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_512005_155_i/diff_225 \
    --id visit=512005 detector=155  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_20_21_512005_155_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_20_21_512005_155_i/diff_235 \
    --id visit=512005 detector=155  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_898791_131_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_898791_131_i/diff_205 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_898791_131_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_898791_131_i/diff_215 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_898791_131_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_898791_131_i/diff_225 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_898791_131_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_898791_131_i/diff_235 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_478974_146_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_478974_146_i/diff_205 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_478974_146_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_478974_146_i/diff_215 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_478974_146_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_478974_146_i/diff_225 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_478974_146_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_478974_146_i/diff_235 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_437352_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_437352_45_i/diff_205 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_437352_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_437352_45_i/diff_215 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_437352_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_437352_45_i/diff_225 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_437352_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_437352_45_i/diff_235 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211342_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211342_45_i/diff_205 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211342_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211342_45_i/diff_215 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211342_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211342_45_i/diff_225 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211342_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211342_45_i/diff_235 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_227891_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_227891_150_i/diff_205 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_227891_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_227891_150_i/diff_215 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_227891_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_227891_150_i/diff_225 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_227891_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_227891_150_i/diff_235 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_919557_160_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_919557_160_i/diff_205 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_919557_160_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_919557_160_i/diff_215 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_919557_160_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_919557_160_i/diff_225 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_919557_160_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_919557_160_i/diff_235 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211472_122_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211472_122_i/diff_205 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211472_122_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211472_122_i/diff_215 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211472_122_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211472_122_i/diff_225 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_211472_122_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_211472_122_i/diff_235 \
    --id visit=211472 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_174602_86_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_174602_86_i/diff_205 \
    --id visit=174602 detector=86  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_174602_86_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_174602_86_i/diff_215 \
    --id visit=174602 detector=86  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_174602_86_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_174602_86_i/diff_225 \
    --id visit=174602 detector=86  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_174602_86_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_174602_86_i/diff_235 \
    --id visit=174602 detector=86  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_1013665_75_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_1013665_75_i/diff_205 \
    --id visit=1013665 detector=75  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_1013665_75_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_1013665_75_i/diff_215 \
    --id visit=1013665 detector=75  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_1013665_75_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_1013665_75_i/diff_225 \
    --id visit=1013665 detector=75  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_1013665_75_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_1013665_75_i/diff_235 \
    --id visit=1013665 detector=75  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_976318_61_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_976318_61_i/diff_205 \
    --id visit=976318 detector=61  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_976318_61_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_976318_61_i/diff_215 \
    --id visit=976318 detector=61  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_976318_61_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_976318_61_i/diff_225 \
    --id visit=976318 detector=61  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_21_22_976318_61_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_21_22_976318_61_i/diff_235 \
    --id visit=976318 detector=61  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_898791_131_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_898791_131_i/diff_205 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_898791_131_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_898791_131_i/diff_215 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_898791_131_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_898791_131_i/diff_225 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_898791_131_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_898791_131_i/diff_235 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_478974_146_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_478974_146_i/diff_205 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_478974_146_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_478974_146_i/diff_215 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_478974_146_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_478974_146_i/diff_225 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_478974_146_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_478974_146_i/diff_235 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_437352_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_437352_45_i/diff_205 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_437352_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_437352_45_i/diff_215 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_437352_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_437352_45_i/diff_225 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_437352_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_437352_45_i/diff_235 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1229686_22_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1229686_22_i/diff_205 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1229686_22_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1229686_22_i/diff_215 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1229686_22_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1229686_22_i/diff_225 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1229686_22_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1229686_22_i/diff_235 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_421694_80_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_421694_80_i/diff_205 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_421694_80_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_421694_80_i/diff_215 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_421694_80_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_421694_80_i/diff_225 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_421694_80_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_421694_80_i/diff_235 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_976165_105_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_976165_105_i/diff_205 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_976165_105_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_976165_105_i/diff_215 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_976165_105_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_976165_105_i/diff_225 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_976165_105_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_976165_105_i/diff_235 \
    --id visit=976165 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_204560_109_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_204560_109_i/diff_205 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_204560_109_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_204560_109_i/diff_215 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_204560_109_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_204560_109_i/diff_225 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_204560_109_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_204560_109_i/diff_235 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1157696_32_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1157696_32_i/diff_205 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1157696_32_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1157696_32_i/diff_215 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1157696_32_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1157696_32_i/diff_225 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_1157696_32_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_1157696_32_i/diff_235 \
    --id visit=1157696 detector=32  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_919557_160_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_919557_160_i/diff_205 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_919557_160_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_919557_160_i/diff_215 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_919557_160_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_919557_160_i/diff_225 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_919557_160_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_919557_160_i/diff_235 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_211342_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_211342_45_i/diff_205 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_211342_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_211342_45_i/diff_215 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_211342_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_211342_45_i/diff_225 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_22_23_211342_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_22_23_211342_45_i/diff_235 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_478974_146_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_478974_146_i/diff_205 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_478974_146_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_478974_146_i/diff_215 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_478974_146_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_478974_146_i/diff_225 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_478974_146_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_478974_146_i/diff_235 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_898791_131_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_898791_131_i/diff_205 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_898791_131_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_898791_131_i/diff_215 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_898791_131_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_898791_131_i/diff_225 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_898791_131_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_898791_131_i/diff_235 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_437352_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_437352_45_i/diff_205 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_437352_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_437352_45_i/diff_215 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_437352_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_437352_45_i/diff_225 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_437352_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_437352_45_i/diff_235 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_919557_160_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_919557_160_i/diff_205 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_919557_160_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_919557_160_i/diff_215 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_919557_160_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_919557_160_i/diff_225 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_919557_160_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_919557_160_i/diff_235 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_211342_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_211342_45_i/diff_205 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_211342_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_211342_45_i/diff_215 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_211342_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_211342_45_i/diff_225 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_211342_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_211342_45_i/diff_235 \
    --id visit=211342 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_204560_109_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_204560_109_i/diff_205 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_204560_109_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_204560_109_i/diff_215 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_204560_109_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_204560_109_i/diff_225 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_204560_109_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_204560_109_i/diff_235 \
    --id visit=204560 detector=109  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_1229686_22_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_1229686_22_i/diff_205 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_1229686_22_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_1229686_22_i/diff_215 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_1229686_22_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_1229686_22_i/diff_225 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_1229686_22_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_1229686_22_i/diff_235 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_915757_129_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_915757_129_i/diff_205 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_915757_129_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_915757_129_i/diff_215 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_915757_129_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_915757_129_i/diff_225 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_915757_129_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_915757_129_i/diff_235 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_421694_80_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_421694_80_i/diff_205 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_421694_80_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_421694_80_i/diff_215 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_421694_80_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_421694_80_i/diff_225 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_421694_80_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_421694_80_i/diff_235 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_692613_3_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_692613_3_i/diff_205 \
    --id visit=692613 detector=3  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_692613_3_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_692613_3_i/diff_215 \
    --id visit=692613 detector=3  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_692613_3_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_692613_3_i/diff_225 \
    --id visit=692613 detector=3  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_23_24_692613_3_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_23_24_692613_3_i/diff_235 \
    --id visit=692613 detector=3  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_227891_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_227891_150_i/diff_205 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_227891_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_227891_150_i/diff_215 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_227891_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_227891_150_i/diff_225 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_227891_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_227891_150_i/diff_235 \
    --id visit=227891 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_898791_131_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_898791_131_i/diff_205 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_898791_131_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_898791_131_i/diff_215 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_898791_131_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_898791_131_i/diff_225 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_898791_131_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_898791_131_i/diff_235 \
    --id visit=898791 detector=131  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_919557_160_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_919557_160_i/diff_205 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_919557_160_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_919557_160_i/diff_215 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_919557_160_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_919557_160_i/diff_225 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_919557_160_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_919557_160_i/diff_235 \
    --id visit=919557 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_420805_36_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_420805_36_i/diff_205 \
    --id visit=420805 detector=36  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_420805_36_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_420805_36_i/diff_215 \
    --id visit=420805 detector=36  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_420805_36_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_420805_36_i/diff_225 \
    --id visit=420805 detector=36  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_420805_36_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_420805_36_i/diff_235 \
    --id visit=420805 detector=36  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_421694_80_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_421694_80_i/diff_205 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_421694_80_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_421694_80_i/diff_215 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_421694_80_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_421694_80_i/diff_225 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_421694_80_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_421694_80_i/diff_235 \
    --id visit=421694 detector=80  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_1229686_22_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_1229686_22_i/diff_205 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_1229686_22_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_1229686_22_i/diff_215 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_1229686_22_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_1229686_22_i/diff_225 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_1229686_22_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_1229686_22_i/diff_235 \
    --id visit=1229686 detector=22  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_437352_45_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_437352_45_i/diff_205 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_437352_45_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_437352_45_i/diff_215 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_437352_45_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_437352_45_i/diff_225 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_437352_45_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_437352_45_i/diff_235 \
    --id visit=437352 detector=45  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_478974_146_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_478974_146_i/diff_205 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_478974_146_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_478974_146_i/diff_215 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_478974_146_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_478974_146_i/diff_225 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_478974_146_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_478974_146_i/diff_235 \
    --id visit=478974 detector=146  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_915757_129_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_915757_129_i/diff_205 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_915757_129_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_915757_129_i/diff_215 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_915757_129_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_915757_129_i/diff_225 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_915757_129_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_915757_129_i/diff_235 \
    --id visit=915757 detector=129  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_263507_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_263507_151_i/diff_205 \
    --id visit=263507 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_263507_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_263507_151_i/diff_215 \
    --id visit=263507 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_263507_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_263507_151_i/diff_225 \
    --id visit=263507 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/11_24_25_263507_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/11_24_25_263507_151_i/diff_235 \
    --id visit=263507 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_766972_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_766972_43_i/diff_205 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_766972_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_766972_43_i/diff_215 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_766972_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_766972_43_i/diff_225 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_766972_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_766972_43_i/diff_235 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_464186_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_464186_150_i/diff_205 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_464186_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_464186_150_i/diff_215 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_464186_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_464186_150_i/diff_225 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_464186_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_464186_150_i/diff_235 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_1165709_96_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_1165709_96_i/diff_205 \
    --id visit=1165709 detector=96  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_1165709_96_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_1165709_96_i/diff_215 \
    --id visit=1165709 detector=96  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_1165709_96_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_1165709_96_i/diff_225 \
    --id visit=1165709 detector=96  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_1165709_96_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_1165709_96_i/diff_235 \
    --id visit=1165709 detector=96  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_906937_15_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_906937_15_i/diff_205 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_906937_15_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_906937_15_i/diff_215 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_906937_15_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_906937_15_i/diff_225 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_906937_15_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_906937_15_i/diff_235 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_227891_181_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_227891_181_i/diff_205 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_227891_181_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_227891_181_i/diff_215 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_227891_181_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_227891_181_i/diff_225 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_227891_181_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_227891_181_i/diff_235 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_478928_126_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_478928_126_i/diff_205 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_478928_126_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_478928_126_i/diff_215 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_478928_126_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_478928_126_i/diff_225 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_478928_126_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_478928_126_i/diff_235 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_420782_88_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_420782_88_i/diff_205 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_420782_88_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_420782_88_i/diff_215 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_420782_88_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_420782_88_i/diff_225 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_420782_88_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_420782_88_i/diff_235 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951274_89_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951274_89_i/diff_205 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951274_89_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951274_89_i/diff_215 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951274_89_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951274_89_i/diff_225 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951274_89_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951274_89_i/diff_235 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_428527_16_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_428527_16_i/diff_205 \
    --id visit=428527 detector=16  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_428527_16_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_428527_16_i/diff_215 \
    --id visit=428527 detector=16  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_428527_16_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_428527_16_i/diff_225 \
    --id visit=428527 detector=16  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_428527_16_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_428527_16_i/diff_235 \
    --id visit=428527 detector=16  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951317_170_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951317_170_i/diff_205 \
    --id visit=951317 detector=170  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951317_170_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951317_170_i/diff_215 \
    --id visit=951317 detector=170  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951317_170_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951317_170_i/diff_225 \
    --id visit=951317 detector=170  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_20_21_951317_170_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_20_21_951317_170_i/diff_235 \
    --id visit=951317 detector=170  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1157697_34_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1157697_34_i/diff_205 \
    --id visit=1157697 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1157697_34_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1157697_34_i/diff_215 \
    --id visit=1157697 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1157697_34_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1157697_34_i/diff_225 \
    --id visit=1157697 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1157697_34_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1157697_34_i/diff_235 \
    --id visit=1157697 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_929477_72_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_929477_72_i/diff_205 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_929477_72_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_929477_72_i/diff_215 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_929477_72_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_929477_72_i/diff_225 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_929477_72_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_929477_72_i/diff_235 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_766972_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_766972_43_i/diff_205 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_766972_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_766972_43_i/diff_215 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_766972_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_766972_43_i/diff_225 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_766972_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_766972_43_i/diff_235 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_420782_88_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_420782_88_i/diff_205 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_420782_88_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_420782_88_i/diff_215 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_420782_88_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_420782_88_i/diff_225 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_420782_88_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_420782_88_i/diff_235 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_464186_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_464186_150_i/diff_205 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_464186_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_464186_150_i/diff_215 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_464186_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_464186_150_i/diff_225 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_464186_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_464186_150_i/diff_235 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_682770_174_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_682770_174_i/diff_205 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_682770_174_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_682770_174_i/diff_215 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_682770_174_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_682770_174_i/diff_225 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_682770_174_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_682770_174_i/diff_235 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_458530_103_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_458530_103_i/diff_205 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_458530_103_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_458530_103_i/diff_215 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_458530_103_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_458530_103_i/diff_225 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_458530_103_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_458530_103_i/diff_235 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_951318_101_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_951318_101_i/diff_205 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_951318_101_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_951318_101_i/diff_215 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_951318_101_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_951318_101_i/diff_225 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_951318_101_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_951318_101_i/diff_235 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_953554_179_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_953554_179_i/diff_205 \
    --id visit=953554 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_953554_179_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_953554_179_i/diff_215 \
    --id visit=953554 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_953554_179_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_953554_179_i/diff_225 \
    --id visit=953554 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_953554_179_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_953554_179_i/diff_235 \
    --id visit=953554 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1185854_49_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1185854_49_i/diff_205 \
    --id visit=1185854 detector=49  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1185854_49_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1185854_49_i/diff_215 \
    --id visit=1185854 detector=49  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1185854_49_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1185854_49_i/diff_225 \
    --id visit=1185854 detector=49  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_21_22_1185854_49_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_21_22_1185854_49_i/diff_235 \
    --id visit=1185854 detector=49  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_464186_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_464186_150_i/diff_205 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_464186_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_464186_150_i/diff_215 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_464186_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_464186_150_i/diff_225 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_464186_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_464186_150_i/diff_235 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_682770_174_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_682770_174_i/diff_205 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_682770_174_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_682770_174_i/diff_215 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_682770_174_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_682770_174_i/diff_225 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_682770_174_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_682770_174_i/diff_235 \
    --id visit=682770 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_766972_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_766972_43_i/diff_205 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_766972_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_766972_43_i/diff_215 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_766972_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_766972_43_i/diff_225 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_766972_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_766972_43_i/diff_235 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_951318_101_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_951318_101_i/diff_205 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_951318_101_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_951318_101_i/diff_215 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_951318_101_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_951318_101_i/diff_225 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_951318_101_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_951318_101_i/diff_235 \
    --id visit=951318 detector=101  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_458530_103_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_458530_103_i/diff_205 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_458530_103_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_458530_103_i/diff_215 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_458530_103_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_458530_103_i/diff_225 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_458530_103_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_458530_103_i/diff_235 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_263507_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_263507_150_i/diff_205 \
    --id visit=263507 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_263507_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_263507_150_i/diff_215 \
    --id visit=263507 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_263507_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_263507_150_i/diff_225 \
    --id visit=263507 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_263507_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_263507_150_i/diff_235 \
    --id visit=263507 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_211229_4_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_211229_4_i/diff_205 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_211229_4_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_211229_4_i/diff_215 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_211229_4_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_211229_4_i/diff_225 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_211229_4_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_211229_4_i/diff_235 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_437321_124_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_437321_124_i/diff_205 \
    --id visit=437321 detector=124  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_437321_124_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_437321_124_i/diff_215 \
    --id visit=437321 detector=124  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_437321_124_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_437321_124_i/diff_225 \
    --id visit=437321 detector=124  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_437321_124_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_437321_124_i/diff_235 \
    --id visit=437321 detector=124  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_929477_72_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_929477_72_i/diff_205 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_929477_72_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_929477_72_i/diff_215 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_929477_72_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_929477_72_i/diff_225 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_929477_72_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_929477_72_i/diff_235 \
    --id visit=929477 detector=72  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_906937_15_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_906937_15_i/diff_205 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_906937_15_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_906937_15_i/diff_215 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_906937_15_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_906937_15_i/diff_225 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_22_23_906937_15_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_22_23_906937_15_i/diff_235 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_227891_181_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_227891_181_i/diff_205 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_227891_181_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_227891_181_i/diff_215 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_227891_181_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_227891_181_i/diff_225 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_227891_181_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_227891_181_i/diff_235 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_420782_88_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_420782_88_i/diff_205 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_420782_88_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_420782_88_i/diff_215 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_420782_88_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_420782_88_i/diff_225 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_420782_88_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_420782_88_i/diff_235 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_478928_126_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_478928_126_i/diff_205 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_478928_126_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_478928_126_i/diff_215 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_478928_126_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_478928_126_i/diff_225 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_478928_126_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_478928_126_i/diff_235 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_906984_168_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_906984_168_i/diff_205 \
    --id visit=906984 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_906984_168_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_906984_168_i/diff_215 \
    --id visit=906984 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_906984_168_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_906984_168_i/diff_225 \
    --id visit=906984 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_906984_168_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_906984_168_i/diff_235 \
    --id visit=906984 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_1205981_163_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_1205981_163_i/diff_205 \
    --id visit=1205981 detector=163  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_1205981_163_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_1205981_163_i/diff_215 \
    --id visit=1205981 detector=163  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_1205981_163_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_1205981_163_i/diff_225 \
    --id visit=1205981 detector=163  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_1205981_163_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_1205981_163_i/diff_235 \
    --id visit=1205981 detector=163  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_496979_67_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_496979_67_i/diff_205 \
    --id visit=496979 detector=67  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_496979_67_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_496979_67_i/diff_215 \
    --id visit=496979 detector=67  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_496979_67_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_496979_67_i/diff_225 \
    --id visit=496979 detector=67  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_496979_67_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_496979_67_i/diff_235 \
    --id visit=496979 detector=67  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_654465_125_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_654465_125_i/diff_205 \
    --id visit=654465 detector=125  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_654465_125_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_654465_125_i/diff_215 \
    --id visit=654465 detector=125  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_654465_125_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_654465_125_i/diff_225 \
    --id visit=654465 detector=125  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_654465_125_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_654465_125_i/diff_235 \
    --id visit=654465 detector=125  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211182_188_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211182_188_i/diff_205 \
    --id visit=211182 detector=188  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211182_188_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211182_188_i/diff_215 \
    --id visit=211182 detector=188  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211182_188_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211182_188_i/diff_225 \
    --id visit=211182 detector=188  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211182_188_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211182_188_i/diff_235 \
    --id visit=211182 detector=188  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211229_4_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211229_4_i/diff_205 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211229_4_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211229_4_i/diff_215 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211229_4_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211229_4_i/diff_225 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_211229_4_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_211229_4_i/diff_235 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_965403_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_965403_151_i/diff_205 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_965403_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_965403_151_i/diff_215 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_965403_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_965403_151_i/diff_225 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_23_24_965403_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_23_24_965403_151_i/diff_235 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_766972_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_766972_43_i/diff_205 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_766972_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_766972_43_i/diff_215 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_766972_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_766972_43_i/diff_225 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_766972_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_766972_43_i/diff_235 \
    --id visit=766972 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_464186_150_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_464186_150_i/diff_205 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_464186_150_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_464186_150_i/diff_215 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_464186_150_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_464186_150_i/diff_225 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_464186_150_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_464186_150_i/diff_235 \
    --id visit=464186 detector=150  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_951274_89_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_951274_89_i/diff_205 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_951274_89_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_951274_89_i/diff_215 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_951274_89_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_951274_89_i/diff_225 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_951274_89_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_951274_89_i/diff_235 \
    --id visit=951274 detector=89  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_420782_88_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_420782_88_i/diff_205 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_420782_88_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_420782_88_i/diff_215 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_420782_88_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_420782_88_i/diff_225 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_420782_88_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_420782_88_i/diff_235 \
    --id visit=420782 detector=88  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_478928_126_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_478928_126_i/diff_205 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_478928_126_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_478928_126_i/diff_215 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_478928_126_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_478928_126_i/diff_225 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_478928_126_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_478928_126_i/diff_235 \
    --id visit=478928 detector=126  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_906937_15_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_906937_15_i/diff_205 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_906937_15_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_906937_15_i/diff_215 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_906937_15_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_906937_15_i/diff_225 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_906937_15_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_906937_15_i/diff_235 \
    --id visit=906937 detector=15  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_227891_181_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_227891_181_i/diff_205 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_227891_181_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_227891_181_i/diff_215 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_227891_181_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_227891_181_i/diff_225 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_227891_181_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_227891_181_i/diff_235 \
    --id visit=227891 detector=181  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_211229_4_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_211229_4_i/diff_205 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_211229_4_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_211229_4_i/diff_215 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_211229_4_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_211229_4_i/diff_225 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_211229_4_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_211229_4_i/diff_235 \
    --id visit=211229 detector=4  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_965403_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_965403_151_i/diff_205 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_965403_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_965403_151_i/diff_215 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_965403_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_965403_151_i/diff_225 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_965403_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_965403_151_i/diff_235 \
    --id visit=965403 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_458530_103_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_458530_103_i/diff_205 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_458530_103_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_458530_103_i/diff_215 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_458530_103_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_458530_103_i/diff_225 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/22_24_25_458530_103_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/22_24_25_458530_103_i/diff_235 \
    --id visit=458530 detector=103  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1173799_99_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1173799_99_i/diff_205 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1173799_99_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1173799_99_i/diff_215 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1173799_99_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1173799_99_i/diff_225 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1173799_99_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1173799_99_i/diff_235 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_478975_112_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_478975_112_i/diff_205 \
    --id visit=478975 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_478975_112_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_478975_112_i/diff_215 \
    --id visit=478975 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_478975_112_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_478975_112_i/diff_225 \
    --id visit=478975 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_478975_112_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_478975_112_i/diff_235 \
    --id visit=478975 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_685717_35_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_685717_35_i/diff_205 \
    --id visit=685717 detector=35  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_685717_35_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_685717_35_i/diff_215 \
    --id visit=685717 detector=35  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_685717_35_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_685717_35_i/diff_225 \
    --id visit=685717 detector=35  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_685717_35_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_685717_35_i/diff_235 \
    --id visit=685717 detector=35  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420806_93_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420806_93_i/diff_205 \
    --id visit=420806 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420806_93_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420806_93_i/diff_215 \
    --id visit=420806 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420806_93_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420806_93_i/diff_225 \
    --id visit=420806 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420806_93_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420806_93_i/diff_235 \
    --id visit=420806 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_261992_164_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_261992_164_i/diff_205 \
    --id visit=261992 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_261992_164_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_261992_164_i/diff_215 \
    --id visit=261992 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_261992_164_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_261992_164_i/diff_225 \
    --id visit=261992 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_261992_164_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_261992_164_i/diff_235 \
    --id visit=261992 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1229686_47_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1229686_47_i/diff_205 \
    --id visit=1229686 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1229686_47_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1229686_47_i/diff_215 \
    --id visit=1229686 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1229686_47_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1229686_47_i/diff_225 \
    --id visit=1229686 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_1229686_47_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_1229686_47_i/diff_235 \
    --id visit=1229686 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_976371_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_976371_157_i/diff_205 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_976371_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_976371_157_i/diff_215 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_976371_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_976371_157_i/diff_225 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_976371_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_976371_157_i/diff_235 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_678508_104_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_678508_104_i/diff_205 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_678508_104_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_678508_104_i/diff_215 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_678508_104_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_678508_104_i/diff_225 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_678508_104_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_678508_104_i/diff_235 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_244023_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_244023_157_i/diff_205 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_244023_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_244023_157_i/diff_215 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_244023_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_244023_157_i/diff_225 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_244023_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_244023_157_i/diff_235 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420781_180_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420781_180_i/diff_205 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420781_180_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420781_180_i/diff_215 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420781_180_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420781_180_i/diff_225 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_20_21_420781_180_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_20_21_420781_180_i/diff_235 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_244023_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_244023_157_i/diff_205 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_244023_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_244023_157_i/diff_215 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_244023_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_244023_157_i/diff_225 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_244023_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_244023_157_i/diff_235 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1209139_70_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1209139_70_i/diff_205 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1209139_70_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1209139_70_i/diff_215 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1209139_70_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1209139_70_i/diff_225 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1209139_70_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1209139_70_i/diff_235 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1231914_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1231914_151_i/diff_205 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1231914_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1231914_151_i/diff_215 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1231914_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1231914_151_i/diff_225 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1231914_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1231914_151_i/diff_235 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1174555_76_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1174555_76_i/diff_205 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1174555_76_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1174555_76_i/diff_215 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1174555_76_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1174555_76_i/diff_225 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1174555_76_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1174555_76_i/diff_235 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_976371_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_976371_157_i/diff_205 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_976371_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_976371_157_i/diff_215 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_976371_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_976371_157_i/diff_225 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_976371_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_976371_157_i/diff_235 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_919558_46_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_919558_46_i/diff_205 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_919558_46_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_919558_46_i/diff_215 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_919558_46_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_919558_46_i/diff_225 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_919558_46_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_919558_46_i/diff_235 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_906936_127_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_906936_127_i/diff_205 \
    --id visit=906936 detector=127  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_906936_127_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_906936_127_i/diff_215 \
    --id visit=906936 detector=127  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_906936_127_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_906936_127_i/diff_225 \
    --id visit=906936 detector=127  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_906936_127_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_906936_127_i/diff_235 \
    --id visit=906936 detector=127  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_678508_104_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_678508_104_i/diff_205 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_678508_104_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_678508_104_i/diff_215 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_678508_104_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_678508_104_i/diff_225 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_678508_104_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_678508_104_i/diff_235 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1212833_47_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1212833_47_i/diff_205 \
    --id visit=1212833 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1212833_47_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1212833_47_i/diff_215 \
    --id visit=1212833 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1212833_47_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1212833_47_i/diff_225 \
    --id visit=1212833 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1212833_47_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1212833_47_i/diff_235 \
    --id visit=1212833 detector=47  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1173799_99_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1173799_99_i/diff_205 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1173799_99_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1173799_99_i/diff_215 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1173799_99_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1173799_99_i/diff_225 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_21_22_1173799_99_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_21_22_1173799_99_i/diff_235 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1231914_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1231914_151_i/diff_205 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1231914_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1231914_151_i/diff_215 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1231914_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1231914_151_i/diff_225 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1231914_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1231914_151_i/diff_235 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1209139_70_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1209139_70_i/diff_205 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1209139_70_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1209139_70_i/diff_215 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1209139_70_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1209139_70_i/diff_225 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1209139_70_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1209139_70_i/diff_235 \
    --id visit=1209139 detector=70  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_976371_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_976371_157_i/diff_205 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_976371_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_976371_157_i/diff_215 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_976371_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_976371_157_i/diff_225 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_976371_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_976371_157_i/diff_235 \
    --id visit=976371 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_512050_154_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_512050_154_i/diff_205 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_512050_154_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_512050_154_i/diff_215 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_512050_154_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_512050_154_i/diff_225 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_512050_154_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_512050_154_i/diff_235 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_893769_165_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_893769_165_i/diff_205 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_893769_165_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_893769_165_i/diff_215 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_893769_165_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_893769_165_i/diff_225 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_893769_165_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_893769_165_i/diff_235 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_244023_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_244023_157_i/diff_205 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_244023_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_244023_157_i/diff_215 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_244023_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_244023_157_i/diff_225 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_244023_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_244023_157_i/diff_235 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_420781_180_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_420781_180_i/diff_205 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_420781_180_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_420781_180_i/diff_215 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_420781_180_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_420781_180_i/diff_225 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_420781_180_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_420781_180_i/diff_235 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173799_99_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173799_99_i/diff_205 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173799_99_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173799_99_i/diff_215 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173799_99_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173799_99_i/diff_225 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173799_99_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173799_99_i/diff_235 \
    --id visit=1173799 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_929438_111_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_929438_111_i/diff_205 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_929438_111_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_929438_111_i/diff_215 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_929438_111_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_929438_111_i/diff_225 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_929438_111_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_929438_111_i/diff_235 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173729_6_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173729_6_i/diff_205 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173729_6_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173729_6_i/diff_215 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173729_6_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173729_6_i/diff_225 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_22_23_1173729_6_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_22_23_1173729_6_i/diff_235 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_929438_111_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_929438_111_i/diff_205 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_929438_111_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_929438_111_i/diff_215 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_929438_111_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_929438_111_i/diff_225 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_929438_111_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_929438_111_i/diff_235 \
    --id visit=929438 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_420781_180_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_420781_180_i/diff_205 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_420781_180_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_420781_180_i/diff_215 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_420781_180_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_420781_180_i/diff_225 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_420781_180_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_420781_180_i/diff_235 \
    --id visit=420781 detector=180  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_244023_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_244023_157_i/diff_205 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_244023_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_244023_157_i/diff_215 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_244023_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_244023_157_i/diff_225 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_244023_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_244023_157_i/diff_235 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_678508_104_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_678508_104_i/diff_205 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_678508_104_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_678508_104_i/diff_215 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_678508_104_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_678508_104_i/diff_225 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_678508_104_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_678508_104_i/diff_235 \
    --id visit=678508 detector=104  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_654487_116_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_654487_116_i/diff_205 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_654487_116_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_654487_116_i/diff_215 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_654487_116_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_654487_116_i/diff_225 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_654487_116_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_654487_116_i/diff_235 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_512050_154_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_512050_154_i/diff_205 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_512050_154_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_512050_154_i/diff_215 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_512050_154_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_512050_154_i/diff_225 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_512050_154_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_512050_154_i/diff_235 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_893769_165_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_893769_165_i/diff_205 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_893769_165_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_893769_165_i/diff_215 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_893769_165_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_893769_165_i/diff_225 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_893769_165_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_893769_165_i/diff_235 \
    --id visit=893769 detector=165  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_211303_141_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_211303_141_i/diff_205 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_211303_141_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_211303_141_i/diff_215 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_211303_141_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_211303_141_i/diff_225 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_211303_141_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_211303_141_i/diff_235 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1231914_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1231914_151_i/diff_205 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1231914_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1231914_151_i/diff_215 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1231914_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1231914_151_i/diff_225 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1231914_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1231914_151_i/diff_235 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1173729_6_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1173729_6_i/diff_205 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1173729_6_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1173729_6_i/diff_215 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1173729_6_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1173729_6_i/diff_225 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_23_24_1173729_6_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_23_24_1173729_6_i/diff_235 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1173729_6_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1173729_6_i/diff_205 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1173729_6_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1173729_6_i/diff_215 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1173729_6_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1173729_6_i/diff_225 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1173729_6_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1173729_6_i/diff_235 \
    --id visit=1173729 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_678545_148_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_678545_148_i/diff_205 \
    --id visit=678545 detector=148  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_678545_148_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_678545_148_i/diff_215 \
    --id visit=678545 detector=148  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_678545_148_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_678545_148_i/diff_225 \
    --id visit=678545 detector=148  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_678545_148_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_678545_148_i/diff_235 \
    --id visit=678545 detector=148  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_244023_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_244023_157_i/diff_205 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_244023_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_244023_157_i/diff_215 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_244023_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_244023_157_i/diff_225 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_244023_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_244023_157_i/diff_235 \
    --id visit=244023 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1231914_151_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1231914_151_i/diff_205 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1231914_151_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1231914_151_i/diff_215 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1231914_151_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1231914_151_i/diff_225 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1231914_151_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1231914_151_i/diff_235 \
    --id visit=1231914 detector=151  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_654487_116_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_654487_116_i/diff_205 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_654487_116_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_654487_116_i/diff_215 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_654487_116_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_654487_116_i/diff_225 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_654487_116_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_654487_116_i/diff_235 \
    --id visit=654487 detector=116  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1174555_76_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1174555_76_i/diff_205 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1174555_76_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1174555_76_i/diff_215 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1174555_76_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1174555_76_i/diff_225 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_1174555_76_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_1174555_76_i/diff_235 \
    --id visit=1174555 detector=76  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211303_141_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211303_141_i/diff_205 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211303_141_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211303_141_i/diff_215 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211303_141_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211303_141_i/diff_225 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211303_141_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211303_141_i/diff_235 \
    --id visit=211303 detector=141  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211147_52_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211147_52_i/diff_205 \
    --id visit=211147 detector=52  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211147_52_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211147_52_i/diff_215 \
    --id visit=211147 detector=52  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211147_52_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211147_52_i/diff_225 \
    --id visit=211147 detector=52  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_211147_52_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_211147_52_i/diff_235 \
    --id visit=211147 detector=52  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_919558_46_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_919558_46_i/diff_205 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_919558_46_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_919558_46_i/diff_215 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_919558_46_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_919558_46_i/diff_225 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_919558_46_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_919558_46_i/diff_235 \
    --id visit=919558 detector=46  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_512050_154_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_512050_154_i/diff_205 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_512050_154_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_512050_154_i/diff_215 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_512050_154_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_512050_154_i/diff_225 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/33_24_25_512050_154_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/33_24_25_512050_154_i/diff_235 \
    --id visit=512050 detector=154  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_204594_144_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_204594_144_i/diff_205 \
    --id visit=204594 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_204594_144_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_204594_144_i/diff_215 \
    --id visit=204594 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_204594_144_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_204594_144_i/diff_225 \
    --id visit=204594 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_204594_144_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_204594_144_i/diff_235 \
    --id visit=204594 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1165738_59_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1165738_59_i/diff_205 \
    --id visit=1165738 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1165738_59_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1165738_59_i/diff_215 \
    --id visit=1165738 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1165738_59_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1165738_59_i/diff_225 \
    --id visit=1165738 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1165738_59_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1165738_59_i/diff_235 \
    --id visit=1165738 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1157696_51_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1157696_51_i/diff_205 \
    --id visit=1157696 detector=51  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1157696_51_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1157696_51_i/diff_215 \
    --id visit=1157696 detector=51  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1157696_51_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1157696_51_i/diff_225 \
    --id visit=1157696 detector=51  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1157696_51_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1157696_51_i/diff_235 \
    --id visit=1157696 detector=51  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1185892_7_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1185892_7_i/diff_205 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1185892_7_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1185892_7_i/diff_215 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1185892_7_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1185892_7_i/diff_225 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1185892_7_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1185892_7_i/diff_235 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_929472_40_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_929472_40_i/diff_205 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_929472_40_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_929472_40_i/diff_215 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_929472_40_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_929472_40_i/diff_225 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_929472_40_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_929472_40_i/diff_235 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_687400_168_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_687400_168_i/diff_205 \
    --id visit=687400 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_687400_168_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_687400_168_i/diff_215 \
    --id visit=687400 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_687400_168_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_687400_168_i/diff_225 \
    --id visit=687400 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_687400_168_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_687400_168_i/diff_235 \
    --id visit=687400 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1173729_37_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1173729_37_i/diff_205 \
    --id visit=1173729 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1173729_37_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1173729_37_i/diff_215 \
    --id visit=1173729 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1173729_37_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1173729_37_i/diff_225 \
    --id visit=1173729 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_1173729_37_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_1173729_37_i/diff_235 \
    --id visit=1173729 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_965403_160_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_965403_160_i/diff_205 \
    --id visit=965403 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_965403_160_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_965403_160_i/diff_215 \
    --id visit=965403 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_965403_160_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_965403_160_i/diff_225 \
    --id visit=965403 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_965403_160_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_965403_160_i/diff_235 \
    --id visit=965403 detector=160  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_263457_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_263457_20_i/diff_205 \
    --id visit=263457 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_263457_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_263457_20_i/diff_215 \
    --id visit=263457 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_263457_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_263457_20_i/diff_225 \
    --id visit=263457 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_263457_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_263457_20_i/diff_235 \
    --id visit=263457 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_654466_41_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_654466_41_i/diff_205 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_654466_41_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_654466_41_i/diff_215 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_654466_41_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_654466_41_i/diff_225 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_20_21_654466_41_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_20_21_654466_41_i/diff_235 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_693452_24_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_693452_24_i/diff_205 \
    --id visit=693452 detector=24  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_693452_24_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_693452_24_i/diff_215 \
    --id visit=693452 detector=24  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_693452_24_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_693452_24_i/diff_225 \
    --id visit=693452 detector=24  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_693452_24_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_693452_24_i/diff_235 \
    --id visit=693452 detector=24  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_767014_77_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_767014_77_i/diff_205 \
    --id visit=767014 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_767014_77_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_767014_77_i/diff_215 \
    --id visit=767014 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_767014_77_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_767014_77_i/diff_225 \
    --id visit=767014 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_767014_77_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_767014_77_i/diff_235 \
    --id visit=767014 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_687427_111_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_687427_111_i/diff_205 \
    --id visit=687427 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_687427_111_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_687427_111_i/diff_215 \
    --id visit=687427 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_687427_111_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_687427_111_i/diff_225 \
    --id visit=687427 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_687427_111_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_687427_111_i/diff_235 \
    --id visit=687427 detector=111  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1157697_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1157697_82_i/diff_205 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1157697_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1157697_82_i/diff_215 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1157697_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1157697_82_i/diff_225 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1157697_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1157697_82_i/diff_235 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_976355_121_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_976355_121_i/diff_205 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_976355_121_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_976355_121_i/diff_215 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_976355_121_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_976355_121_i/diff_225 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_976355_121_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_976355_121_i/diff_235 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1231329_132_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1231329_132_i/diff_205 \
    --id visit=1231329 detector=132  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1231329_132_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1231329_132_i/diff_215 \
    --id visit=1231329 detector=132  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1231329_132_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1231329_132_i/diff_225 \
    --id visit=1231329 detector=132  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1231329_132_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1231329_132_i/diff_235 \
    --id visit=1231329 detector=132  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1174554_161_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1174554_161_i/diff_205 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1174554_161_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1174554_161_i/diff_215 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1174554_161_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1174554_161_i/diff_225 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_1174554_161_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_1174554_161_i/diff_235 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211303_133_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211303_133_i/diff_205 \
    --id visit=211303 detector=133  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211303_133_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211303_133_i/diff_215 \
    --id visit=211303 detector=133  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211303_133_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211303_133_i/diff_225 \
    --id visit=211303 detector=133  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211303_133_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211303_133_i/diff_235 \
    --id visit=211303 detector=133  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211274_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211274_157_i/diff_205 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211274_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211274_157_i/diff_215 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211274_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211274_157_i/diff_225 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_211274_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_211274_157_i/diff_235 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_654466_41_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_654466_41_i/diff_205 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_654466_41_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_654466_41_i/diff_215 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_654466_41_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_654466_41_i/diff_225 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_21_22_654466_41_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_21_22_654466_41_i/diff_235 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1174554_161_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1174554_161_i/diff_205 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1174554_161_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1174554_161_i/diff_215 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1174554_161_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1174554_161_i/diff_225 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1174554_161_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1174554_161_i/diff_235 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654498_6_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654498_6_i/diff_205 \
    --id visit=654498 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654498_6_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654498_6_i/diff_215 \
    --id visit=654498 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654498_6_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654498_6_i/diff_225 \
    --id visit=654498 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654498_6_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654498_6_i/diff_235 \
    --id visit=654498 detector=6  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_929472_40_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_929472_40_i/diff_205 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_929472_40_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_929472_40_i/diff_215 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_929472_40_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_929472_40_i/diff_225 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_929472_40_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_929472_40_i/diff_235 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_953500_139_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_953500_139_i/diff_205 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_953500_139_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_953500_139_i/diff_215 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_953500_139_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_953500_139_i/diff_225 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_953500_139_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_953500_139_i/diff_235 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1157697_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1157697_82_i/diff_205 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1157697_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1157697_82_i/diff_215 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1157697_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1157697_82_i/diff_225 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1157697_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1157697_82_i/diff_235 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1185892_7_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1185892_7_i/diff_205 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1185892_7_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1185892_7_i/diff_215 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1185892_7_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1185892_7_i/diff_225 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_1185892_7_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_1185892_7_i/diff_235 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654466_41_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654466_41_i/diff_205 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654466_41_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654466_41_i/diff_215 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654466_41_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654466_41_i/diff_225 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_654466_41_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_654466_41_i/diff_235 \
    --id visit=654466 detector=41  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_945671_30_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_945671_30_i/diff_205 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_945671_30_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_945671_30_i/diff_215 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_945671_30_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_945671_30_i/diff_225 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_945671_30_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_945671_30_i/diff_235 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_685717_39_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_685717_39_i/diff_205 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_685717_39_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_685717_39_i/diff_215 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_685717_39_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_685717_39_i/diff_225 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_685717_39_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_685717_39_i/diff_235 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_211274_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_211274_157_i/diff_205 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_211274_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_211274_157_i/diff_215 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_211274_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_211274_157_i/diff_225 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_22_23_211274_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_22_23_211274_157_i/diff_235 \
    --id visit=211274 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_929472_40_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_929472_40_i/diff_205 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_929472_40_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_929472_40_i/diff_215 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_929472_40_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_929472_40_i/diff_225 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_929472_40_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_929472_40_i/diff_235 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_906984_174_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_906984_174_i/diff_205 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_906984_174_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_906984_174_i/diff_215 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_906984_174_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_906984_174_i/diff_225 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_906984_174_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_906984_174_i/diff_235 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_641121_168_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_641121_168_i/diff_205 \
    --id visit=641121 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_641121_168_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_641121_168_i/diff_215 \
    --id visit=641121 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_641121_168_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_641121_168_i/diff_225 \
    --id visit=641121 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_641121_168_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_641121_168_i/diff_235 \
    --id visit=641121 detector=168  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_953500_139_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_953500_139_i/diff_205 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_953500_139_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_953500_139_i/diff_215 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_953500_139_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_953500_139_i/diff_225 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_953500_139_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_953500_139_i/diff_235 \
    --id visit=953500 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_976355_121_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_976355_121_i/diff_205 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_976355_121_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_976355_121_i/diff_215 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_976355_121_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_976355_121_i/diff_225 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_976355_121_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_976355_121_i/diff_235 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_685717_39_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_685717_39_i/diff_205 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_685717_39_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_685717_39_i/diff_215 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_685717_39_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_685717_39_i/diff_225 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_685717_39_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_685717_39_i/diff_235 \
    --id visit=685717 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_693404_60_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_693404_60_i/diff_205 \
    --id visit=693404 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_693404_60_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_693404_60_i/diff_215 \
    --id visit=693404 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_693404_60_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_693404_60_i/diff_225 \
    --id visit=693404 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_693404_60_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_693404_60_i/diff_235 \
    --id visit=693404 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1157697_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1157697_82_i/diff_205 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1157697_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1157697_82_i/diff_215 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1157697_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1157697_82_i/diff_225 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1157697_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1157697_82_i/diff_235 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1173799_53_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1173799_53_i/diff_205 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1173799_53_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1173799_53_i/diff_215 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1173799_53_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1173799_53_i/diff_225 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1173799_53_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1173799_53_i/diff_235 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1174554_161_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1174554_161_i/diff_205 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1174554_161_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1174554_161_i/diff_215 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1174554_161_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1174554_161_i/diff_225 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_23_24_1174554_161_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_23_24_1174554_161_i/diff_235 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_945671_30_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_945671_30_i/diff_205 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_945671_30_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_945671_30_i/diff_215 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_945671_30_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_945671_30_i/diff_225 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_945671_30_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_945671_30_i/diff_235 \
    --id visit=945671 detector=30  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_906984_174_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_906984_174_i/diff_205 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_906984_174_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_906984_174_i/diff_215 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_906984_174_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_906984_174_i/diff_225 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_906984_174_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_906984_174_i/diff_235 \
    --id visit=906984 detector=174  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174588_167_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174588_167_i/diff_205 \
    --id visit=1174588 detector=167  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174588_167_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174588_167_i/diff_215 \
    --id visit=1174588 detector=167  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174588_167_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174588_167_i/diff_225 \
    --id visit=1174588 detector=167  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174588_167_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174588_167_i/diff_235 \
    --id visit=1174588 detector=167  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1157697_82_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1157697_82_i/diff_205 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1157697_82_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1157697_82_i/diff_215 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1157697_82_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1157697_82_i/diff_225 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1157697_82_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1157697_82_i/diff_235 \
    --id visit=1157697 detector=82  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_428530_19_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_428530_19_i/diff_205 \
    --id visit=428530 detector=19  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_428530_19_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_428530_19_i/diff_215 \
    --id visit=428530 detector=19  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_428530_19_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_428530_19_i/diff_225 \
    --id visit=428530 detector=19  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_428530_19_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_428530_19_i/diff_235 \
    --id visit=428530 detector=19  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_976355_121_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_976355_121_i/diff_205 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_976355_121_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_976355_121_i/diff_215 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_976355_121_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_976355_121_i/diff_225 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_976355_121_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_976355_121_i/diff_235 \
    --id visit=976355 detector=121  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1185892_7_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1185892_7_i/diff_205 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1185892_7_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1185892_7_i/diff_215 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1185892_7_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1185892_7_i/diff_225 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1185892_7_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1185892_7_i/diff_235 \
    --id visit=1185892 detector=7  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1173799_53_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1173799_53_i/diff_205 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1173799_53_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1173799_53_i/diff_215 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1173799_53_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1173799_53_i/diff_225 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1173799_53_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1173799_53_i/diff_235 \
    --id visit=1173799 detector=53  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_929472_40_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_929472_40_i/diff_205 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_929472_40_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_929472_40_i/diff_215 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_929472_40_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_929472_40_i/diff_225 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_929472_40_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_929472_40_i/diff_235 \
    --id visit=929472 detector=40  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174554_161_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174554_161_i/diff_205 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174554_161_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174554_161_i/diff_215 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174554_161_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174554_161_i/diff_225 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/44_24_25_1174554_161_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/44_24_25_1174554_161_i/diff_235 \
    --id visit=1174554 detector=161  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_464186_164_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_464186_164_i/diff_205 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_464186_164_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_464186_164_i/diff_215 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_464186_164_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_464186_164_i/diff_225 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_464186_164_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_464186_164_i/diff_235 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_641075_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_641075_20_i/diff_205 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_641075_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_641075_20_i/diff_215 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_641075_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_641075_20_i/diff_225 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_641075_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_641075_20_i/diff_235 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_421727_149_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_421727_149_i/diff_205 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_421727_149_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_421727_149_i/diff_215 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_421727_149_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_421727_149_i/diff_225 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_421727_149_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_421727_149_i/diff_235 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_976355_120_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_976355_120_i/diff_205 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_976355_120_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_976355_120_i/diff_215 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_976355_120_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_976355_120_i/diff_225 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_976355_120_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_976355_120_i/diff_235 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_687427_112_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_687427_112_i/diff_205 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_687427_112_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_687427_112_i/diff_215 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_687427_112_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_687427_112_i/diff_225 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_687427_112_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_687427_112_i/diff_235 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1232016_78_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1232016_78_i/diff_205 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1232016_78_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1232016_78_i/diff_215 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1232016_78_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1232016_78_i/diff_225 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1232016_78_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1232016_78_i/diff_235 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_204519_187_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_204519_187_i/diff_205 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_204519_187_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_204519_187_i/diff_215 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_204519_187_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_204519_187_i/diff_225 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_204519_187_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_204519_187_i/diff_235 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1185854_97_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1185854_97_i/diff_205 \
    --id visit=1185854 detector=97  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1185854_97_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1185854_97_i/diff_215 \
    --id visit=1185854 detector=97  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1185854_97_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1185854_97_i/diff_225 \
    --id visit=1185854 detector=97  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_1185854_97_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_1185854_97_i/diff_235 \
    --id visit=1185854 detector=97  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_478974_93_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_478974_93_i/diff_205 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_478974_93_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_478974_93_i/diff_215 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_478974_93_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_478974_93_i/diff_225 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_478974_93_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_478974_93_i/diff_235 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_654466_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_654466_43_i/diff_205 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_654466_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_654466_43_i/diff_215 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_654466_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_654466_43_i/diff_225 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_20_21_654466_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_20_21_654466_43_i/diff_235 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_976355_120_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_976355_120_i/diff_205 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_976355_120_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_976355_120_i/diff_215 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_976355_120_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_976355_120_i/diff_225 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_976355_120_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_976355_120_i/diff_235 \
    --id visit=976355 detector=120  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_211182_175_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_211182_175_i/diff_205 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_211182_175_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_211182_175_i/diff_215 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_211182_175_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_211182_175_i/diff_225 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_211182_175_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_211182_175_i/diff_235 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_478974_93_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_478974_93_i/diff_205 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_478974_93_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_478974_93_i/diff_215 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_478974_93_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_478974_93_i/diff_225 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_478974_93_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_478974_93_i/diff_235 \
    --id visit=478974 detector=93  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_420806_98_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_420806_98_i/diff_205 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_420806_98_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_420806_98_i/diff_215 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_420806_98_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_420806_98_i/diff_225 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_420806_98_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_420806_98_i/diff_235 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_428527_60_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_428527_60_i/diff_205 \
    --id visit=428527 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_428527_60_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_428527_60_i/diff_215 \
    --id visit=428527 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_428527_60_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_428527_60_i/diff_225 \
    --id visit=428527 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_428527_60_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_428527_60_i/diff_235 \
    --id visit=428527 detector=60  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_174549_99_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_174549_99_i/diff_205 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_174549_99_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_174549_99_i/diff_215 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_174549_99_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_174549_99_i/diff_225 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_174549_99_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_174549_99_i/diff_235 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_1231296_9_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_1231296_9_i/diff_205 \
    --id visit=1231296 detector=9  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_1231296_9_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_1231296_9_i/diff_215 \
    --id visit=1231296 detector=9  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_1231296_9_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_1231296_9_i/diff_225 \
    --id visit=1231296 detector=9  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_1231296_9_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_1231296_9_i/diff_235 \
    --id visit=1231296 detector=9  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_421727_149_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_421727_149_i/diff_205 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_421727_149_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_421727_149_i/diff_215 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_421727_149_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_421727_149_i/diff_225 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_421727_149_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_421727_149_i/diff_235 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_204519_187_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_204519_187_i/diff_205 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_204519_187_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_204519_187_i/diff_215 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_204519_187_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_204519_187_i/diff_225 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_204519_187_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_204519_187_i/diff_235 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_929472_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_929472_43_i/diff_205 \
    --id visit=929472 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_929472_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_929472_43_i/diff_215 \
    --id visit=929472 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_929472_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_929472_43_i/diff_225 \
    --id visit=929472 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_21_22_929472_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_21_22_929472_43_i/diff_235 \
    --id visit=929472 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_687427_112_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_687427_112_i/diff_205 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_687427_112_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_687427_112_i/diff_215 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_687427_112_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_687427_112_i/diff_225 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_687427_112_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_687427_112_i/diff_235 \
    --id visit=687427 detector=112  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_641075_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_641075_20_i/diff_205 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_641075_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_641075_20_i/diff_215 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_641075_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_641075_20_i/diff_225 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_641075_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_641075_20_i/diff_235 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_464186_164_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_464186_164_i/diff_205 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_464186_164_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_464186_164_i/diff_215 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_464186_164_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_464186_164_i/diff_225 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_464186_164_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_464186_164_i/diff_235 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_654466_43_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_654466_43_i/diff_205 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_654466_43_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_654466_43_i/diff_215 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_654466_43_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_654466_43_i/diff_225 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_654466_43_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_654466_43_i/diff_235 \
    --id visit=654466 detector=43  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_421727_149_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_421727_149_i/diff_205 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_421727_149_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_421727_149_i/diff_215 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_421727_149_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_421727_149_i/diff_225 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_421727_149_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_421727_149_i/diff_235 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_893771_176_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_893771_176_i/diff_205 \
    --id visit=893771 detector=176  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_893771_176_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_893771_176_i/diff_215 \
    --id visit=893771 detector=176  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_893771_176_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_893771_176_i/diff_225 \
    --id visit=893771 detector=176  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_893771_176_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_893771_176_i/diff_235 \
    --id visit=893771 detector=176  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_211182_175_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_211182_175_i/diff_205 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_211182_175_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_211182_175_i/diff_215 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_211182_175_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_211182_175_i/diff_225 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_211182_175_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_211182_175_i/diff_235 \
    --id visit=211182 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_1232016_78_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_1232016_78_i/diff_205 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_1232016_78_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_1232016_78_i/diff_215 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_1232016_78_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_1232016_78_i/diff_225 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_1232016_78_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_1232016_78_i/diff_235 \
    --id visit=1232016 detector=78  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_204661_139_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_204661_139_i/diff_205 \
    --id visit=204661 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_204661_139_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_204661_139_i/diff_215 \
    --id visit=204661 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_204661_139_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_204661_139_i/diff_225 \
    --id visit=204661 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_204661_139_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_204661_139_i/diff_235 \
    --id visit=204661 detector=139  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_420806_98_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_420806_98_i/diff_205 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_420806_98_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_420806_98_i/diff_215 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_420806_98_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_420806_98_i/diff_225 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_22_23_420806_98_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_22_23_420806_98_i/diff_235 \
    --id visit=420806 detector=98  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_421727_149_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_421727_149_i/diff_205 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_421727_149_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_421727_149_i/diff_215 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_421727_149_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_421727_149_i/diff_225 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_421727_149_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_421727_149_i/diff_235 \
    --id visit=421727 detector=149  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_204519_187_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_204519_187_i/diff_205 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_204519_187_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_204519_187_i/diff_215 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_204519_187_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_204519_187_i/diff_225 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_204519_187_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_204519_187_i/diff_235 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1165709_143_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1165709_143_i/diff_205 \
    --id visit=1165709 detector=143  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1165709_143_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1165709_143_i/diff_215 \
    --id visit=1165709 detector=143  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1165709_143_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1165709_143_i/diff_225 \
    --id visit=1165709 detector=143  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1165709_143_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1165709_143_i/diff_235 \
    --id visit=1165709 detector=143  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_174549_99_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_174549_99_i/diff_205 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_174549_99_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_174549_99_i/diff_215 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_174549_99_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_174549_99_i/diff_225 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_174549_99_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_174549_99_i/diff_235 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_420878_140_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_420878_140_i/diff_205 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_420878_140_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_420878_140_i/diff_215 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_420878_140_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_420878_140_i/diff_225 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_420878_140_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_420878_140_i/diff_235 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_464186_164_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_464186_164_i/diff_205 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_464186_164_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_464186_164_i/diff_215 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_464186_164_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_464186_164_i/diff_225 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_464186_164_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_464186_164_i/diff_235 \
    --id visit=464186 detector=164  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_641075_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_641075_20_i/diff_205 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_641075_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_641075_20_i/diff_215 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_641075_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_641075_20_i/diff_225 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_641075_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_641075_20_i/diff_235 \
    --id visit=641075 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1209192_44_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1209192_44_i/diff_205 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1209192_44_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1209192_44_i/diff_215 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1209192_44_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1209192_44_i/diff_225 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_1209192_44_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_1209192_44_i/diff_235 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_227924_153_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_227924_153_i/diff_205 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_227924_153_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_227924_153_i/diff_215 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_227924_153_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_227924_153_i/diff_225 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_227924_153_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_227924_153_i/diff_235 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_976215_66_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_976215_66_i/diff_205 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_976215_66_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_976215_66_i/diff_215 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_976215_66_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_976215_66_i/diff_225 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_23_24_976215_66_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_23_24_976215_66_i/diff_235 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_174549_99_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_174549_99_i/diff_205 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_174549_99_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_174549_99_i/diff_215 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_174549_99_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_174549_99_i/diff_225 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_174549_99_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_174549_99_i/diff_235 \
    --id visit=174549 detector=99  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_682811_84_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_682811_84_i/diff_205 \
    --id visit=682811 detector=84  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_682811_84_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_682811_84_i/diff_215 \
    --id visit=682811 detector=84  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_682811_84_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_682811_84_i/diff_225 \
    --id visit=682811 detector=84  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_682811_84_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_682811_84_i/diff_235 \
    --id visit=682811 detector=84  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_204519_187_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_204519_187_i/diff_205 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_204519_187_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_204519_187_i/diff_215 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_204519_187_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_204519_187_i/diff_225 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_204519_187_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_204519_187_i/diff_235 \
    --id visit=204519 detector=187  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1209192_44_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1209192_44_i/diff_205 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1209192_44_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1209192_44_i/diff_215 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1209192_44_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1209192_44_i/diff_225 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1209192_44_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1209192_44_i/diff_235 \
    --id visit=1209192 detector=44  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1206032_123_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1206032_123_i/diff_205 \
    --id visit=1206032 detector=123  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1206032_123_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1206032_123_i/diff_215 \
    --id visit=1206032 detector=123  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1206032_123_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1206032_123_i/diff_225 \
    --id visit=1206032 detector=123  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1206032_123_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1206032_123_i/diff_235 \
    --id visit=1206032 detector=123  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_976215_66_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_976215_66_i/diff_205 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_976215_66_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_976215_66_i/diff_215 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_976215_66_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_976215_66_i/diff_225 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_976215_66_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_976215_66_i/diff_235 \
    --id visit=976215 detector=66  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1185892_37_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1185892_37_i/diff_205 \
    --id visit=1185892 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1185892_37_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1185892_37_i/diff_215 \
    --id visit=1185892 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1185892_37_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1185892_37_i/diff_225 \
    --id visit=1185892 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_1185892_37_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_1185892_37_i/diff_235 \
    --id visit=1185892 detector=37  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_915802_105_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_915802_105_i/diff_205 \
    --id visit=915802 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_915802_105_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_915802_105_i/diff_215 \
    --id visit=915802 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_915802_105_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_915802_105_i/diff_225 \
    --id visit=915802 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_915802_105_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_915802_105_i/diff_235 \
    --id visit=915802 detector=105  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_420878_140_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_420878_140_i/diff_205 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_420878_140_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_420878_140_i/diff_215 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_420878_140_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_420878_140_i/diff_225 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_420878_140_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_420878_140_i/diff_235 \
    --id visit=420878 detector=140  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_227924_153_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_227924_153_i/diff_205 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_227924_153_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_227924_153_i/diff_215 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_227924_153_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_227924_153_i/diff_225 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/55_24_25_227924_153_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/55_24_25_227924_153_i/diff_235 \
    --id visit=227924 detector=153  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437351_117_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437351_117_i/diff_205 \
    --id visit=437351 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437351_117_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437351_117_i/diff_215 \
    --id visit=437351 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437351_117_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437351_117_i/diff_225 \
    --id visit=437351 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437351_117_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437351_117_i/diff_235 \
    --id visit=437351 detector=117  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_420784_59_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_420784_59_i/diff_205 \
    --id visit=420784 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_420784_59_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_420784_59_i/diff_215 \
    --id visit=420784 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_420784_59_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_420784_59_i/diff_225 \
    --id visit=420784 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_420784_59_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_420784_59_i/diff_235 \
    --id visit=420784 detector=59  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_767014_34_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_767014_34_i/diff_205 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_767014_34_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_767014_34_i/diff_215 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_767014_34_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_767014_34_i/diff_225 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_767014_34_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_767014_34_i/diff_235 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_678545_179_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_678545_179_i/diff_205 \
    --id visit=678545 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_678545_179_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_678545_179_i/diff_215 \
    --id visit=678545 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_678545_179_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_678545_179_i/diff_225 \
    --id visit=678545 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_678545_179_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_678545_179_i/diff_235 \
    --id visit=678545 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437352_108_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437352_108_i/diff_205 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437352_108_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437352_108_i/diff_215 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437352_108_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437352_108_i/diff_225 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_437352_108_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_437352_108_i/diff_235 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_204560_136_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_204560_136_i/diff_205 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_204560_136_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_204560_136_i/diff_215 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_204560_136_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_204560_136_i/diff_225 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_204560_136_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_204560_136_i/diff_235 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_421727_159_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_421727_159_i/diff_205 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_421727_159_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_421727_159_i/diff_215 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_421727_159_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_421727_159_i/diff_225 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_421727_159_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_421727_159_i/diff_235 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_976318_39_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_976318_39_i/diff_205 \
    --id visit=976318 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_976318_39_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_976318_39_i/diff_215 \
    --id visit=976318 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_976318_39_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_976318_39_i/diff_225 \
    --id visit=976318 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_976318_39_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_976318_39_i/diff_235 \
    --id visit=976318 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_919560_56_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_919560_56_i/diff_205 \
    --id visit=919560 detector=56  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_919560_56_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_919560_56_i/diff_215 \
    --id visit=919560 detector=56  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_919560_56_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_919560_56_i/diff_225 \
    --id visit=919560 detector=56  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_919560_56_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_919560_56_i/diff_235 \
    --id visit=919560 detector=56  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_263504_20_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_263504_20_i/diff_205 \
    --id visit=263504 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_263504_20_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_263504_20_i/diff_215 \
    --id visit=263504 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_263504_20_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_263504_20_i/diff_225 \
    --id visit=263504 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_20_21_263504_20_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_20_21_263504_20_i/diff_235 \
    --id visit=263504 detector=20  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_437352_108_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_437352_108_i/diff_205 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_437352_108_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_437352_108_i/diff_215 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_437352_108_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_437352_108_i/diff_225 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_437352_108_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_437352_108_i/diff_235 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_919514_12_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_919514_12_i/diff_205 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_919514_12_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_919514_12_i/diff_215 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_919514_12_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_919514_12_i/diff_225 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_919514_12_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_919514_12_i/diff_235 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227924_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227924_157_i/diff_205 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227924_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227924_157_i/diff_215 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227924_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227924_157_i/diff_225 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227924_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227924_157_i/diff_235 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_421727_159_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_421727_159_i/diff_205 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_421727_159_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_421727_159_i/diff_215 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_421727_159_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_421727_159_i/diff_225 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_421727_159_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_421727_159_i/diff_235 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227890_77_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227890_77_i/diff_205 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227890_77_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227890_77_i/diff_215 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227890_77_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227890_77_i/diff_225 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_227890_77_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_227890_77_i/diff_235 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_211147_39_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_211147_39_i/diff_205 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_211147_39_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_211147_39_i/diff_215 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_211147_39_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_211147_39_i/diff_225 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_211147_39_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_211147_39_i/diff_235 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_898737_55_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_898737_55_i/diff_205 \
    --id visit=898737 detector=55  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_898737_55_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_898737_55_i/diff_215 \
    --id visit=898737 detector=55  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_898737_55_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_898737_55_i/diff_225 \
    --id visit=898737 detector=55  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_898737_55_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_898737_55_i/diff_235 \
    --id visit=898737 detector=55  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_767014_34_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_767014_34_i/diff_205 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_767014_34_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_767014_34_i/diff_215 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_767014_34_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_767014_34_i/diff_225 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_767014_34_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_767014_34_i/diff_235 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_420806_144_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_420806_144_i/diff_205 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_420806_144_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_420806_144_i/diff_215 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_420806_144_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_420806_144_i/diff_225 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_420806_144_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_420806_144_i/diff_235 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_951274_145_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_951274_145_i/diff_205 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_951274_145_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_951274_145_i/diff_215 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_951274_145_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_951274_145_i/diff_225 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_21_22_951274_145_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_21_22_951274_145_i/diff_235 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_211147_39_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_211147_39_i/diff_205 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_211147_39_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_211147_39_i/diff_215 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_211147_39_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_211147_39_i/diff_225 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_211147_39_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_211147_39_i/diff_235 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_428527_100_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_428527_100_i/diff_205 \
    --id visit=428527 detector=100  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_428527_100_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_428527_100_i/diff_215 \
    --id visit=428527 detector=100  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_428527_100_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_428527_100_i/diff_225 \
    --id visit=428527 detector=100  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_428527_100_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_428527_100_i/diff_235 \
    --id visit=428527 detector=100  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204661_136_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204661_136_i/diff_205 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204661_136_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204661_136_i/diff_215 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204661_136_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204661_136_i/diff_225 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204661_136_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204661_136_i/diff_235 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_437352_108_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_437352_108_i/diff_205 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_437352_108_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_437352_108_i/diff_215 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_437352_108_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_437352_108_i/diff_225 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_437352_108_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_437352_108_i/diff_235 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204560_136_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204560_136_i/diff_205 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204560_136_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204560_136_i/diff_215 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204560_136_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204560_136_i/diff_225 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_204560_136_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_204560_136_i/diff_235 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_893771_175_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_893771_175_i/diff_205 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_893771_175_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_893771_175_i/diff_215 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_893771_175_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_893771_175_i/diff_225 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_893771_175_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_893771_175_i/diff_235 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_951274_145_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_951274_145_i/diff_205 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_951274_145_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_951274_145_i/diff_215 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_951274_145_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_951274_145_i/diff_225 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_951274_145_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_951274_145_i/diff_235 \
    --id visit=951274 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_227890_77_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_227890_77_i/diff_205 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_227890_77_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_227890_77_i/diff_215 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_227890_77_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_227890_77_i/diff_225 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_227890_77_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_227890_77_i/diff_235 \
    --id visit=227890 detector=77  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_1205978_73_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_1205978_73_i/diff_205 \
    --id visit=1205978 detector=73  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_1205978_73_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_1205978_73_i/diff_215 \
    --id visit=1205978 detector=73  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_1205978_73_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_1205978_73_i/diff_225 \
    --id visit=1205978 detector=73  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_1205978_73_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_1205978_73_i/diff_235 \
    --id visit=1205978 detector=73  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_261992_122_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_261992_122_i/diff_205 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_261992_122_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_261992_122_i/diff_215 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_261992_122_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_261992_122_i/diff_225 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_22_23_261992_122_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_22_23_261992_122_i/diff_235 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204560_136_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204560_136_i/diff_205 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204560_136_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204560_136_i/diff_215 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204560_136_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204560_136_i/diff_225 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204560_136_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204560_136_i/diff_235 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_421727_159_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_421727_159_i/diff_205 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_421727_159_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_421727_159_i/diff_215 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_421727_159_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_421727_159_i/diff_225 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_421727_159_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_421727_159_i/diff_235 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_437352_108_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_437352_108_i/diff_205 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_437352_108_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_437352_108_i/diff_215 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_437352_108_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_437352_108_i/diff_225 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_437352_108_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_437352_108_i/diff_235 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_767014_34_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_767014_34_i/diff_205 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_767014_34_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_767014_34_i/diff_215 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_767014_34_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_767014_34_i/diff_225 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_767014_34_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_767014_34_i/diff_235 \
    --id visit=767014 detector=34  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_211147_39_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_211147_39_i/diff_205 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_211147_39_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_211147_39_i/diff_215 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_211147_39_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_211147_39_i/diff_225 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_211147_39_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_211147_39_i/diff_235 \
    --id visit=211147 detector=39  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_227924_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_227924_157_i/diff_205 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_227924_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_227924_157_i/diff_215 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_227924_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_227924_157_i/diff_225 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_227924_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_227924_157_i/diff_235 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_919514_12_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_919514_12_i/diff_205 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_919514_12_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_919514_12_i/diff_215 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_919514_12_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_919514_12_i/diff_225 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_919514_12_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_919514_12_i/diff_235 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_915802_145_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_915802_145_i/diff_205 \
    --id visit=915802 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_915802_145_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_915802_145_i/diff_215 \
    --id visit=915802 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_915802_145_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_915802_145_i/diff_225 \
    --id visit=915802 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_915802_145_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_915802_145_i/diff_235 \
    --id visit=915802 detector=145  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_261992_122_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_261992_122_i/diff_205 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_261992_122_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_261992_122_i/diff_215 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_261992_122_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_261992_122_i/diff_225 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_261992_122_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_261992_122_i/diff_235 \
    --id visit=261992 detector=122  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204661_136_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204661_136_i/diff_205 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204661_136_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204661_136_i/diff_215 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204661_136_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204661_136_i/diff_225 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_23_24_204661_136_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_23_24_204661_136_i/diff_235 \
    --id visit=204661 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_437352_108_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_437352_108_i/diff_205 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_437352_108_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_437352_108_i/diff_215 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_437352_108_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_437352_108_i/diff_225 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_437352_108_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_437352_108_i/diff_235 \
    --id visit=437352 detector=108  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_421727_159_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_421727_159_i/diff_205 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_421727_159_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_421727_159_i/diff_215 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_421727_159_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_421727_159_i/diff_225 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_421727_159_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_421727_159_i/diff_235 \
    --id visit=421727 detector=159  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_919514_12_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_919514_12_i/diff_205 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_919514_12_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_919514_12_i/diff_215 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_919514_12_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_919514_12_i/diff_225 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_919514_12_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_919514_12_i/diff_235 \
    --id visit=919514 detector=12  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_915757_179_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_915757_179_i/diff_205 \
    --id visit=915757 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_915757_179_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_915757_179_i/diff_215 \
    --id visit=915757 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_915757_179_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_915757_179_i/diff_225 \
    --id visit=915757 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_915757_179_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_915757_179_i/diff_235 \
    --id visit=915757 detector=179  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_204560_136_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_204560_136_i/diff_205 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_204560_136_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_204560_136_i/diff_215 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_204560_136_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_204560_136_i/diff_225 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_204560_136_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_204560_136_i/diff_235 \
    --id visit=204560 detector=136  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_420806_144_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_420806_144_i/diff_205 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_420806_144_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_420806_144_i/diff_215 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_420806_144_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_420806_144_i/diff_225 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_420806_144_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_420806_144_i/diff_235 \
    --id visit=420806 detector=144  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_478974_83_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_478974_83_i/diff_205 \
    --id visit=478974 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_478974_83_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_478974_83_i/diff_215 \
    --id visit=478974 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_478974_83_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_478974_83_i/diff_225 \
    --id visit=478974 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_478974_83_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_478974_83_i/diff_235 \
    --id visit=478974 detector=83  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_227924_157_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_227924_157_i/diff_205 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_227924_157_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_227924_157_i/diff_215 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_227924_157_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_227924_157_i/diff_225 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_227924_157_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_227924_157_i/diff_235 \
    --id visit=227924 detector=157  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_893771_175_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_893771_175_i/diff_205 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_893771_175_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_893771_175_i/diff_215 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_893771_175_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_893771_175_i/diff_225 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_893771_175_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_893771_175_i/diff_235 \
    --id visit=893771 detector=175  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_687427_113_i/fake_205 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_687427_113_i/diff_205 \
    --id visit=687427 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_687427_113_i/fake_215 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_687427_113_i/diff_215 \
    --id visit=687427 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_687427_113_i/fake_225 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_687427_113_i/diff_225 \
    --id visit=687427 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

imageDifferenceDriver.py ./data/patch_0to6/injection/66_24_25_687427_113_i/fake_235 \
    --output ./data/patch_0to6/diff/al_default/66_24_25_687427_113_i/diff_235 \
    --id visit=687427 detector=113  -C ./config/diffimConfig_al_default.py \
    --clobber-config --clobber-versions --cores 1 \
    --batch-type=slurm \
    --time 5000 \
    --mpiexec='-bind-to socket' \
    --batch-output logs_folder \
    --batch-options='-C haswell -q shared'

