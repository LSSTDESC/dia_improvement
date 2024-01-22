import numpy as np
import pandas as pd
from skimage.measure import moments, moments_central

def slice_df(df, equal=None, big=None, small=None):
    # condition list
    cond_ls = []
    if equal:
        for key, item in equal.items():
            cond_ls.append(df.loc[:, key]==item)
    if big:
        for key, item in big.items():
            cond_ls.append(df.loc[:, key]>item)
    if small:
        for key, item in small.items():
            cond_ls.append(df.loc[:, key]<item)
    if not cond_ls:
        return df.copy().reset_index(drop=True)
    else:
        index = np.logical_and.reduce(cond_ls)
        sliced_df = df.loc[index].copy().reset_index(drop=True)
        return sliced_df
    
def estimate_sigmaclipped_mean_std(data, threshold):
    data = data[~np.isnan(data)]
    data_clipped, _, _ = sigmaclip(data, low=threshold, high=threshold)
    return np.mean(data_clipped), np.std(data_clipped)
    
def calculate_center(image):
    M = moments(image)
    cx = M[0, 1] / M[0, 0]
    cy = M[1, 0] / M[0, 0]
    cxx = M[0, 2] / M[0, 0]
    cyy = M[2, 0] / M[0, 0]
    cxy = M[1, 1] / M[0, 0]
    return cx, cy, cxx, cyy, cxy