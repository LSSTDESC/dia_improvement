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

A. In the `desc_stack` terminal, run `python ./select_hosts.py`. This script will select host sources for injection. We can also work in the `host_selection.ipynb` notebook with the `desc-kernel` to achieve the same goal. This notebook also includes code which test the selection result.

B. In the `desc_stack` terminal, run `python ./inject_fakes.py`. This script will inject fake sources onto calexp exposures and generate a script for image difference. The name of the difference difference script depends on the configuration we choose.

C. In the `image_difference` terminal, run the script generated in step B. Some subtractions may fail if we use `slurm`. The `subtraction_exsistance.ipynb` notebook can help us know which subtraction fail. We can instead run them locally.

D. In the `desc_stack` terminal, run `python get_detection.py`. The measurements from the DIA pipeline will be saved into a local database. The `fake_src` table of the databse stores synthetic source information, and the `artifact` table stores artifact information. A script for performing forced photometry will be generated.

E. In the `image_difference` terminal, run the script generated in step D.

F. In the `desc_stack` terminal, run `python get_forced.py`, this will extract the results of forced phtometrty and saved them into another local database. The `forced` table stores forced photometry information and matched diaSrc information.

G. `config_sub.py` and `config_det.py` includes code to perform analysis with different configuration setup.

H. Analysis results are saved in `paper_plots.ipynb` and `paper_table.ipynb`. 

## Reference

[AL algorithm](https://arxiv.org/abs/astro-ph/9712287)

[ZOGY algorithm](https://arxiv.org/abs/1601.02655)

[Regularization and model selection techniques](https://arxiv.org/pdf/1512.04655.pdf)

## Links

- [GCR Catalogs](https://github.com/LSSTDESC/gcr-catalogs)
