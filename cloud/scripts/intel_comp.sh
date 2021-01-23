#!/bin/bash

INTEL_COMP_DIR=/vol1/intel

##################################
#  Jenkins intel compiler
##################################

ln -sf ${INTEL_COMP_DIR} /opt/intel
source /opt/intel/compilers_and_libraries_2020/linux/bin/compilervars.sh intel64
source /opt/intel/compilers_and_libraries_2020.2.254/linux/mpi/intel64/bin/mpivars.sh
export PATH="/opt/intel/bin:${PATH}"
