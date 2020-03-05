from lsst.daf.persistence import Butler
from lsst.afw.image import PhotoCalib

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import sigmaclip
from scipy.stats import norm

class DifferenceImageAnalyzer(object):
    
    def __init__(self, image, variance):
        self.image = image
        self.variance = variance
        self.image_norm = self.normalize_image(self.image, self.variance)
        self.covariance_matrix = np.array([None])
    
    def get_valid_data(self, data):
        inf_mask = np.isinf(data)
        nan_mask = np.isnan(data)
        mask = np.logical_or(inf_mask, nan_mask)
        valid_data = data[~mask].ravel()
        
        return valid_data
    
    def normalize_image(self, image, variance):
        image_norm = image / np.sqrt(variance)
        
        return image_norm
    
    def clean_data(self, data, fill_value=0):
        data_copy = data.copy()
        inf_mask = np.isinf(data_copy)
        nan_mask = np.isnan(data_copy)
        mask = np.logical_or(inf_mask, nan_mask)
        data_copy[mask] = fill_value
        
        return data_copy
            
    def sigma_clip(self, data, threshold=5.0):
        valid_data = self.get_valid_data(data)
        clipped_data, _, _ = sigmaclip(valid_data, low=threshold, high=threshold)
        
        return clipped_data
    
    def get_mean_variance(self):
        sigma_clip_image = self.sigma_clip(self.image)
        mean_image = np.mean(sigma_clip_image)
        var_image = np.var(sigma_clip_image, ddof=1)
        mean_variance = np.mean(self.sigma_clip(self.variance))
        
        return mean_image, var_image, mean_variance
    
    def plot_pixel_distribution(self, title='distribution', use_sample_std=False, save_fig=False):
        if use_sample_std == True:
            valid_image = self.get_valid_data(self.image / np.std(self.image, ddof=1))
        else:
            valid_image = self.get_valid_data(self.image_norm)
            
        rv = norm(loc=0., scale=1.0)
        x = np.arange(-5,5.1,0.1)
        plt.figure()
        plt.hist(valid_image, bins=1000, density=True, label='pixel distribution')
        plt.xlim(-10, 10)
        plt.plot(x, rv.pdf(x), label='normal distribution')
        plt.title(title)
        plt.legend()
        if save_fig == True:
            plt.savefig('{}.png'.format(title), dpi=500)
    
    def cal_covariance_matrix(self, make_plot=False, save_fig=False, save_name='covariance_matrix'):
        image_clean = self.clean_data(self.image_norm)
        shifted_imgs = [
            image_clean,
            np.roll(image_clean, 1, 0), np.roll(image_clean, -1, 0),
            np.roll(image_clean, 1, 1), np.roll(image_clean, -1, 1),
            np.roll(np.roll(image_clean, 1, 0), 1, 1), np.roll(np.roll(image_clean, 1, 0), -1, 1),
            np.roll(np.roll(image_clean, -1, 0), 1, 1), np.roll(np.roll(image_clean, -1, 0), -1, 1),
            np.roll(image_clean, 2, 0), np.roll(image_clean, -2, 0),
            np.roll(image_clean, 2, 1), np.roll(image_clean, -2, 1),
            np.roll(image_clean, 3, 0), np.roll(image_clean, -3, 0),
            np.roll(image_clean, 3, 1), np.roll(image_clean, -3, 1),
            np.roll(image_clean, 4, 0), np.roll(image_clean, -4, 0),
            np.roll(image_clean, 4, 1), np.roll(image_clean, -4, 1),
            np.roll(image_clean, 5, 0), np.roll(image_clean, -5, 0),
            np.roll(image_clean, 5, 1), np.roll(image_clean, -5, 1),
            #np.roll(np.roll(data, 2, 0), 1, 1), np.roll(np.roll(data, 2, 0), -1, 1),
            #np.roll(np.roll(data, -2, 0), 1, 1), np.roll(np.roll(data, -2, 0), -1, 1),
            #np.roll(np.roll(data, 1, 0), 2, 1), np.roll(np.roll(data, 1, 0), -2, 1),
            #np.roll(np.roll(data, -1, 0), 2, 1), np.roll(np.roll(data, -1, 0), -2, 1),
            #np.roll(np.roll(data, 2, 0), 2, 1), np.roll(np.roll(data, 2, 0), -2, 1),
            #np.roll(np.roll(data, -2, 0), 2, 1), np.roll(np.roll(data, -2, 0), -2, 1),
        ]
        shifted_imgs = np.vstack([i.flatten() for i in shifted_imgs])
        self.covariance_matrix = np.cov(shifted_imgs, bias=1)
            
    def cal_covariance(self):
        if self.covariance_matrix.any() == None:
            raise Exception('Covariance matrix has not been calculated.')
        trace = np.trace(self.covariance_matrix)
        covariance = (np.sum(self.covariance_matrix) - trace) / trace
        return covariance
    
    def plot_covariance_matrix(self, title='covariance_matrix', save_fig=False):
        if self.covariance_matrix.any() == None:
            raise Exception('Covariance matrix has not been calculated.')
        plt.figure()
        plt.imshow(self.covariance_matrix)
        plt.title(title)
        plt.colorbar()
        if save_fig == True:
            plt.savefig('{}.png'.format(title), dpi=500)
    

