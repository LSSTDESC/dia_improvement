#！/bin/bash

source /cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/v20.0.0/loadLSST.bash
setup lsst_distrib

# scons only need to be done only once. 
# We can comment out line 10 - line 12 once the scons is done.
# `setup -jr dia_pipe` need to be kept.

cd dia_pipe
scons
cd ..
setup -jr dia_pipe

cd pipe_tasks
scons
cd ..
setup -jr pipe_tasks

export HDF5_USE_FILE_LOCKING=FALSE
export OMP_NUM_THREADS=1

echo 'done'
