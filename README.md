# Dia Improvement

This repo provides tools to evaluating the difference imaging analysis(DIA) pipeline and improving the DIA algorithms.

## 1. Evaluating DIA Performance

There are several aspects of the DIA we need to evaluate.
- The image quality of the difference image(pixel distribution, variance plane,...)
- The efficiency vs. global host magnitude.
- The efficiency vs.local host signal to noise ratio.
- The efficiency vs. source magnitude. The 50% cutoff point.
- The flux recovery of the DIA algorithms.
- The false positive rate.
- FLAGS which are useful to filtering false positive detections.
- The effect of PSF shapes of the template image and the science image.
- The optimal configs of the algorithms.
- The comparison of the Alard-Lupton(AL) algorithm and the ZOGY algorithm.

In this project, we plan to answer these questions using the fake injection technique.


## 2. Possible Improvements

- Applying regularization and model selection techniques to the Alard-Lupton(AL) algorithm.
- Searching for regularization techniques of the ZOGY algorithm.
- Tracking the covariance of nearby pixels for improving the decorrelation kernel of the ZOGY algorithm.

Reference:

[AL algorithm](https://arxiv.org/abs/astro-ph/9712287)

[ZOGY algorithm](https://arxiv.org/abs/1601.02655)

[Regularization and model selection techniques](https://arxiv.org/pdf/1512.04655.pdf)

## 3. Software Dependencies

To successfully run the fake injection pipeline, we need to install [dia_pipe](https://github.com/LSSTDESC/dia_pipe), [obs_lsst](https://github.com/lsst/obs_lsst), and [pipe_tasks](https://github.com/lsst/pipe_tasks).

Install packages:

- obs_lsst: git clone https://github.com/lsst/obs_lsst.git

checkout proper commit:
```
cd obs_lsst
git checkout -b fake_test 30368a2b8c2941f1a04c704048c33e056a6af57b
cd ..
```

- dia_pipe: git clone https://github.com/LSSTDESC/dia_pipe.git

checkout proper commit (HEAD, origin/#19, Create output directory if it doesn't exist in forcedPhotCatalogDiaTask)
```
cd dia_pipe
git checkout -b fake_test 8ae16a9f5e5c1e4f174626b7f1e002b9d0c69b8f
cd ..
```

- pipe_tasks: git clone https://github.com/lsst/pipe_tasks.git

checkout proper commit (HEAD -> u/wmwv/dia_apcorr, origin/u/wmwv/dia_apcorr, Actually create the applyApCorr subtask.)
```
cd pipe_tasks
git checkout -b fake_test 7c1b45f03a170bb471028729aad273843dfa3b28
cd ..
```

 To install the latest Jupyter notebook kernel, run the following code.
 
 `source /global/common/software/lsst/common/miniconda/kernels/setup.sh`

## 4. Working Directories

- CSCRATCH1 `/global/cscratch1/sd/shl159`
- DIA shared space `/global/cfs/cdirs/desc-dia/data/shl159/projects` (This directory does not support `slurm`)

## 5. Setup Working Terminals

We work in the devel directory of the dia_improvement repo. We need to open two terminals to run our pipeline code. Let us call one terminal as `image_difference` and the other as `desc_stack`.

In the `image_difference` terminal, run `source ./setup_subtraction.sh` (We also need to uncomment the code related to the `scons` command at the first time).

In the `desc_stack` terminal, run `source setup_desc_stack.sh`.

We need to switch between these terminals to complete our analysis pipeline.

## 6. Analysis Pipeline.

A. In the `desc_stack` terminal, run `python ./select_hosts.py`. This script will select host sources for injection. We can also work in the `host_selection.ipynb` notebook with the `desc-kernel` to achieve the same goal. This notebook also includes code which test the selection result.

B. In the `desc_stack` terminal, run `python ./inject_fakes.py`. This script will inject fake sources onto calexp exposures and generate a script for image difference. The name of the difference difference script depends on the configuration we choose.

C. In the `image_difference` terminal, run the script generated in step B.

D. In the `desc_stack` terminal, run `python get_detection.py`. The measurements from the DIA pipeline will be saved into a local database. The `fake_src` table of the databse stores synthetic source information, and the `artifact` table stores artifact information. A script for performing forced photometry will be generated.

E. In the `image_difference` terminal, run the script generated in step D.

F. In the `desc_stack` terminal, run `python get_forced.py`, this will extract the results of forced phtometrty and saved them into another local database. The `forced` table stores forced photometry information and matched diaSrc information.

G. `config_sub.py` and `config_det.py` includes code to perform analysis with different configuration setup.

H. Analysis results are saved in `paper_plots.ipynb` and `paper_table.ipynb`. 

## Links

- [GCR Catalogs](https://github.com/LSSTDESC/gcr-catalogs)
