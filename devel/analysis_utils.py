import pandas as pd

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