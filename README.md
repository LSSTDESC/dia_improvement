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
- FLAGS which are useful to filtering fakse positive detections.
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

To successfully run the fake injection pipeline, the following packages are needed.

[dia_pipe](https://github.com/LSSTDESC/dia_pipe)
[obs_lsst](https://github.com/lsst/obs_lsst)
[pipe_tasks](https://github.com/lsst/pipe_tasks)

Install packages:

- obs_lsst: git clone https://github.com/lsst/obs_lsst.git

checkout proper branch:
```
cd obs_lsst
git checkout -b fake_test 30368a2b8c2941f1a04c704048c33e056a6af57b
cd ..
```

- dia_pipe: git clone https://github.com/LSSTDESC/dia_pipe.git

checkout proper commit
```
cd dia_pipe
git checkout -b fake_test 8ae16a9f5e5c1e4f174626b7f1e002b9d0c69b8f
cd ..
```

- pipe_tasks: git clone https://github.com/lsst/pipe_tasks.git

 To install the latest Jupyter notebook kernel, run the following code.
 
 `source /global/common/software/lsst/common/miniconda/kernels/setup.sh`

## 4. Working Directories

- DIA shared space `/global/cfs/cdirs/desc-sn/dia/data/shl159`
- CSCRATCH1 `/global/cscratch1/sd/shl159`
