import numpy as np
import data_process_utils as dpu

class falsePositiveAnalysis():
    def __init__(self, calexp_butler, diff_butler, data_id):
        self.calexp_butler = calexp_butler
        self.diff_butler = diff_butler
        self.data_id = data_id

        self.calexp_exp = self.calexp_butler.get('calexp', data_id)
        self.diff_exp = self.diff_butler.get('deepDiff_differenceExp', data_id)
        self.calexp_calib = self.calexp_butler.get('calexp_photoCalib', data_id)

        self.diff_src = self.diff_butler.get('deepDiff_diaSrc', data_id).asAstropy()
        self.src = self.calexp_butler.get('src', data_id).asAstropy()
        self.base_flag = ['base_PixelFlags_flag_saturated', 'base_PixelFlags_flag_saturatedCenter',
                          'base_PixelFlags_flag_cr', 'base_PixelFlags_flag_crCenter',
                          'base_PixelFlags_flag_interpolated', 'base_PixelFlags_flag_interpolatedCenter',
                          'base_PixelFlags_flag_suspect', 'base_PixelFlags_flag_suspectCenter',
                          'base_PixelFlags_flag_offimage', 'base_PixelFlags_flag_edge','base_PixelFlags_flag_bad']
        
    def get_fake(self, fake_coord, half_width=4):
        match_idx = dpu.match_coord_to_src(fake_coord, self.diff_src, half_width=half_width)
        keep_id = np.zeros(len(self.diff_src)).astype(int)
        keep_id[match_idx] = 1
        keep_id = keep_id == 1
        return self.diff_src.copy()[keep_id]

    def remove_fake(self, fake_coord, half_width=4):
        match_idx = dpu.match_coord_to_src(fake_coord, self.diff_src, half_width=half_width)
        keep_id = np.ones(len(self.diff_src)).astype(int)
        keep_id[match_idx] = 0
        keep_id = keep_id == 1
        return self.diff_src.copy()[keep_id]

    def remove_flag(self, src_table, flag_list=None):
        if not flag_list:
            flag_list = self.base_flag
        flags = src_table[flag_list].to_pandas()
        keep_id = (flags.sum(axis=1) == 0).to_numpy()
        return src_table[keep_id]

    def remove_variable(self, src_table, half_width=4):
        src_xy = src_table[['base_NaiveCentroid_x', 'base_NaiveCentroid_y']].to_pandas().to_numpy()
        variable_xy = dpu.get_variable_xy(self.diff_exp.getBBox(), self.diff_exp.getWcs())
        match_status = dpu.get_match_status(src_xy, np.array(variable_xy), half_width=half_width)
        keep_id = match_status == False
        return src_table[keep_id]

    def get_src_mag(self, ra_arr, dec_arr, half_width=4):
        src_xy = dpu.skycoords_to_pixels(ra_arr, dec_arr, self.calexp_exp.getWcs())
        src_idx = dpu.match_coord_to_src(src_xy, self.src)
        match_table = self.src[src_idx]
        mag_list = []
        for row in match_table:
            flux = row['base_PsfFlux_instFlux']
            mag = self.calexp_calib.instFluxToMagnitude(flux)
            mag_list.append(mag)
        return mag_list
    
    

