# DIA Improvement

This repo provides tools to evaluating the difference imaging analysis(DIA) pipeline and improving the DIA algorithms.

## 1. Evaluating DIA Performance

There are several aspects of the DIA we need to evaluate.
- The image quality of the difference image(pixel distribution, variance plane,...).
- The efficiency vs. local/global host surface brightness/SNR.
- The efficiency vs. synthetic source magnitude. The 50% cutoff point(m1/2).
- The flux recovery of the DIA algorithms.
- The artifact rate.
- The optimal configs of the algorithms (spatial kernel order, deconvolution, ...).
- FLAGS which are useful to filtering false positive detections.
- The effect of PSF shapes of the template image and the science image.
- Artifact Morphology and causes of artifact.
- The comparison of the Alard-Lupton(AL) algorithm and the ZOGY algorithm.

In this project, we plan to answer these questions using the synthetic source injection technique.

## 2. Possible Improvements

- Applying more flexible kernel bases, regularization, and model selection techniques to the AL algorithm.
- Searching for numerically stable solution of the ZOGY algorithm.
- Tracking the covariance of nearby pixels for improving the decorrelation kernel of the ZOGY algorithm.

## 3. Software Dependencies

We use the v23 LSST stack package to perform image subtraction. To successfully run the fake injection pipeline, we need to install [dia_pipe](https://github.com/LSSTDESC/dia_pipe) and [obs_lsst](https://github.com/lsst/obs_lsst),.

Install packages:

- obs_lsst: git clone https://github.com/lsst/obs_lsst.git

checkout proper commit:
```
commit ae545a7513f1cc39f90c5b4e4097cdae37a83d3e (HEAD -> main, tag: w.2022.48, tag: w.2022.47, origin/main, origin/HEAD)
```

- dia_pipe: git clone https://github.com/LSSTDESC/dia_pipe.git

checkout proper commit
```
commit 8ae16a9f5e5c1e4f174626b7f1e002b9d0c69b8f (HEAD, origin/#19)
  """Create output directory if it doesn't exist in forcedPhotCatalogDiaTask"""
```

 To install the latest Jupyter notebook kernel, run the following code.
 
 `source /global/common/software/lsst/common/miniconda/kernels/setup.sh`

## 4. Working Directories

- Cori CSCRATCH1

## 5. Setup Working Terminals

We work in the devel directory of the dia_improvement repo. We need three terminals to run our pipeline code. Let us call them as `image_difference`, `desc_stack`, and `desk_stack_weekly`. To initialize these terminals, we need to run the following scripts.

In the `image_difference` terminal, run `source ./setup_v23.sh`. (scons only need to be done once)

In the `desc_stack` terminal, run `source setup_desc_stack.sh`.

In the `desc_stack_weekly` terminal, run `source setup_desc_stack_weekly.sh`.

## 6. Analysis Pipeline.
To reproduce the analysis results of this repo, we need to run the following steps. Some steps are marked with (optional). These steps are related to analysis results which are not used in our publication.

A. In the `desc_stack` terminal, run `python ./select_hosts.py`. This script will select host sources for injection. We can also work in the `select_hosts.ipynb` notebook with the `desc-kernel` to achieve the same goal. This notebook also includes code which test the selection result.

B. Defaut performance: In the `desc_stack` terminal, run `python ./inject_fakes_v23.py`. This script will inject synthetic sources onto calexp exposures and generate a script for image difference. The name of the difference difference script depends on the configuration we choose. In the `image_difference` terminal, run the script generated in step B. Some subtractions may fail if we use `slurm`. The `subtraction_exsistance.ipynb` notebook can help us know which subtraction fail. We can run the failed subtractions locally. In the `desc_stack_weekly` terminal, run `python get_detection_v23.py`. The measurements from the DIA pipeline will be saved into a local database. The `fake_src` table of the databse stores synthetic source information, and the `artifact` table stores artifact information. A script for performing forced photometry will be generated.

C. Forced photometry: (optional) In the `image_difference` terminal, run the photometry script produced above. In the `desc_stack_weekly` terminal, run `python get_forced_v23.py`, this will extract the results of forced phtometrty and saved them into another local database. The `forced` table stores forced photometry information and matched diaSrc information.

D. Faint sources: In the `desc_stack` terminal, run `faint_injection.py` to inject synthetic sources with faint magnitude. This will also generates a script to run image subtraction. In the `image_difference` terminal, run the image subtraction script for faint sources. In the `desc_stack_weekly` terminal, run `faint_detection.py` to get detection results.

E. Kernel spatial degree of freedom: `spatial_sub_m20_m23.py` generates scripts to perform image subtraction with different kernel spatial orders. `spatial_det_m20_m23.py` extracts information from the data products produced by the scripts generated by `spatial_sub_m20_m23.py`. `spatial_sub_m20_m23.py` should be run in the `desc_stack` kernel. `spatial_det_m20_m23.py` should be run in the `desc_stack_weekly` terminal.

F. Configuration: (optional, same teminals as step E.)`config_sub_m20_m23.py` and `config_det_m20_m23.py` includes code to perform analysis with different configuration setup.

G. We run the folowing scripts to prepare results for analysis. `get_image_info_20_21_m20.py` (desc_stack terminal), `get_coadd.py` (desc_stack terminal), `get_background_souraces.py` (desc_stack terminal), `get_background_sources_sat_flag_applied.py` (desc_stack terminal), `get_default_config_v23.sh` (`image_difference` terminal).

H. Analysis results are saved in DIA_Pipeline_Analysis notebooks (0-3). 

## Reference

[AL algorithm](https://arxiv.org/abs/astro-ph/9712287)

[ZOGY algorithm](https://arxiv.org/abs/1601.02655)

[Regularization and model selection techniques](https://arxiv.org/pdf/1512.04655.pdf)

## Links

- [GCR Catalogs](https://github.com/LSSTDESC/gcr-catalogs)
