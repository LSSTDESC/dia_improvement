#！/bin/bash

source /cvmfs/sw.lsst.eu/linux-x86_64/lsst_distrib/v20.0.0/loadLSST.bash
setup lsst_distrib

# cd dia_pipe
# enable forcedPhotCatalogDia.py
# git checkout origin/#19
# scons
# cd ..
setup -jr dia_pipe/

# cd pipe_tasks
# git checkout u/wmwv/dia_apcorr
# scons
# cd ..
setup -jr pipe_tasks/

export HDF5_USE_FILE_LOCKING=FALSE
export OMP_NUM_THREADS=1

echo 'done'

