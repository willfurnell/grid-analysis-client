#!/bin/bash

#
# Runfile for GridPP and DIRAC. For use with the grid-analysis software.
# https://github.com/willfurnell/grid-analysis
#
# This script gets passed to the grid job to run the CVMFS Python scripts.
#
# Parameters:
# * $1 : the CVMFS location of the grid-analysis software;
# * $2 : the folder containing the frames to be analysed.
#
# This file has been modified from the original: https://github.com/gridpp/cvmfs-getting-started/blob/master/run.sh

export PATH=$1/lib/:$PATH

# Add the Python modules from the LUCID CVMFS repo to the PYTHONPATH. This is so the software can use lucid-utils and
# its dependencies.
export PYTHONPATH=/cvmfs/lucid.egi.eu/libraries/python2.6/site-packages/:$PYTHONPATH

# Add the supporting libraries to the library linking path.
export LD_LIBRARY_PATH=/cvmfs/lucid.egi.eu/libraries/:$LD_LIBRARY_PATH

# Run the Python script in the CVMFS directory.
/usr/bin/python $1/analyse.py $2