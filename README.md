# Dia Improvement

This repo provides tools for evaluating the difference imaging analysis(DIA) pipeline and improving the DIA algorithms.

## 1. Evaluating DIA Performance

There are several aspects of the DIA we need to evaluate.
- The image quality of the difference image(pixel distribution, variance plane,...)
- The efficiency of the DIA algorithm.
- The purity of the DIA algorithm.

## 2. Possible Improvements

- Applying regularization and model selection techniques to the Alard-Lupton(AL) algorithm.
- Searching for regularization techniques of the ZOGY algorithm.
- Tracking the covariance of nearby pixels for improving the decorrelation kernel of the ZOGY algorithm.

Reference:

[AL algorithm](https://arxiv.org/abs/astro-ph/9712287)
[ZOGY algorithm](https://arxiv.org/abs/1601.02655)
[Regularization and model selection techniques](https://arxiv.org/pdf/1512.04655.pdf)