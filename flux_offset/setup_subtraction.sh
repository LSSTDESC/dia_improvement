#！/bin/bash


source /cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/v19.0.0/loadLSST.bash
setup lsst_distrib

# cd dia_pipe
# scons
# cd ..
setup -jr dia_pipe/

# cd obs_lsst/
# scons
# cd ..
setup -jr obs_lsst/

# cd ip_diffim
# scons
# cd ..
setup -jr ip_diffim/


export HDF5_USE_FILE_LOCKING=FALSE
export OMP_NUM_THREADS=1
setup lsst_distrib

echo 'done'
