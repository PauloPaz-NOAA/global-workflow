#!/bin/bash

#%Module######################################################################
##

echo "Setting environment variables for gnu compilers"

##
## load programming environment: compiler, flags, paths
##
export CC=$(which mpicc)
export CXX=$(which mpicxx)
export F77=$(which mpif77)
export F90=$(which mpif90)
export FC=$(which mpif90)

##
## use own NetCDF library
##
export NETCDF=/usr/local
export HDF5=/usr/local

##
## Library directory
##
: ${GFS_LIBS_DIR:-/opt}

##
## NCEP libraries
##
export NEMSIO_LIB=${GFS_LIBS_DIR}/NCEPLIBS-nemsio/libnemsio_v2.2.4.a
export NEMSIOGFS_LIB=${GFS_LIBS_DIR}/NCEPLIBS-nemsiogfs/libnemsiogfs_v2.2.0.a
export BACIO_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-bacio/bacio_v2.1.0_4/libbacio_v2.1.0_4.a
export BACIO_LIB8=${GFS_LIBS_DIR}/NCEPLIBS-bacio/bacio_v2.1.0_8/libbacio_v2.1.0_8.a
export SP_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-sp/libsp_v2.0.2_4.a
export SP_LIB8=${GFS_LIBS_DIR}/NCEPLIBS-sp/libsp_v2.0.2_8.a
export SP_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-sp/libsp_v2.0.2_d.a
export IP_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-ip/ip/v3.0.1/libip_v3.0.1_4.a
export IP_LIB8=${GFS_LIBS_DIR}/NCEPLIBS-ip/ip/v3.0.1/libip_v3.0.1_8.a
export IP_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-ip/ip/v3.0.1/libip_v3.0.1_d.a
export W3EMC_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-w3emc/w3emc/v2.3.0/libw3emc_v2.3.0_d.a
export W3EMC_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-w3emc/w3emc/v2.3.0/libw3emc_v2.3.0_4.a
export W3EMC_LIB8=${GFS_LIBS_DIR}/NCEPLIBS-w3emc/w3emc/v2.3.0/libw3emc_v2.3.0_8.a
export W3NCO_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-w3nco/libw3nco_4.a
export W3NCO_LIB8=${GFS_LIBS_DIR}/NCEPLIBS-w3nco/libw3nco_8.a
export W3NCO_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-w3nco/libw3nco_d.a
export BUFR_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-bufr/libbufr_v11.3.0_4_64.a
export BUFR_LIB8=${GFS_LIBS_DIR}/NCEPLIBS-bufr/libbufr_v11.3.0_8_64.a
export BUFR_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-bufr/libbufr_v11.3.0_d_64.a
export SIGIO_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-sigio/sigio_v2.1.0/libsigio_v2.1.0.a
export SFCIO_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-sfcio/sfcio_v1.1.0/libsfcio_v1.1.0.a
export G2_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-g2/gnu/libg2_v3.1.0_4.a
export G2_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-g2/gnu/libg2_v3.1.0_d.a
export LANDSFCUTIL_LIB4=${GFS_LIBS_DIR}/NCEPLIBS-landsfcutil/landsfcutil/v2.1.0/liblandsfcutil_v2.1.0_4.a
export LANDSFCUTIL_LIBd=${GFS_LIBS_DIR}/NCEPLIBS-landsfcutil/landsfcutil/v2.1.0/liblandsfcutil_v2.1.0_d.a

export NEMSIO_INC=${GFS_LIBS_DIR}/NCEPLIBS-nemsio/nemsio_v2.2.4
export NEMSIOGFS_INC=${GFS_LIBS_DIR}/NCEPLIBS-nemsiogfs/nemsiogfs_v2.2.0
export BACIO_INC4=${GFS_LIBS_DIR}/NCEPLIBS-bacio/bacio_v2.1.0_4/incmod/bacio_v2.1.0_4
export BACIO_INC8=${GFS_LIBS_DIR}/NCEPLIBS-bacio/bacio_v2.1.0_8/incmod/bacio_v2.1.0_8
export IP_INC4=${GFS_LIBS_DIR}/NCEPLIBS-ip/ip/v3.0.1/include/ip_v3.0.1_4
export IP_INC8=${GFS_LIBS_DIR}/NCEPLIBS-ip/ip/v3.0.1/include/ip_v3.0.1_8
export IP_INCd=${GFS_LIBS_DIR}/NCEPLIBS-ip/ip/v3.0.1/include/ip_v3.0.1_d
export W3EMC_INC4=${GFS_LIBS_DIR}/NCEPLIBS-w3emc/w3emc/v2.3.0/include/w3emc_v2.3.0_4
export W3EMC_INC8=${GFS_LIBS_DIR}/NCEPLIBS-w3emc/w3emc/v2.3.0/include/w3emc_v2.3.0_8
export W3EMC_INCd=${GFS_LIBS_DIR}/NCEPLIBS-w3emc/w3emc/v2.3.0/include/w3emc_v2.3.0_d
export SIGIO_INC4=${GFS_LIBS_DIR}/NCEPLIBS-sigio/sigio_v2.1.0/incmod/sigio_v2.1.0
export SFCIO_INC4=${GFS_LIBS_DIR}/NCEPLIBS-sfcio/sfcio_v1.1.0/incmod/sfcio_v1.1.0
export G2_INC4=${GFS_LIBS_DIR}/NCEPLIBS-g2/gnu/include/g2_v3.1.0_4
export G2_INCd=${GFS_LIBS_DIR}/NCEPLIBS-g2/gnu/include/g2_v3.1.0_d
export LANDSFCUTIL_INC4=${GFS_LIBS_DIR}/NCEPLIBS-landsfcutil/landsfcutil/v2.1.0/include/landsfcutil_v2.1.0_4
export LANDSFCUTIL_INCd=${GFS_LIBS_DIR}/NCEPLIBS-landsfcutil/landsfcutil/v2.1.0/include/landsfcutil_v2.1.0_d

export W3NCO_DIR=${GFS_LIBS_DIR}/NCEPlibs-w3nco/src

##
## Other libs
##

export JASPER_LIB=-ljasper
export PNG_LIB=-lpng
export Z_LIB=-lz
export CURL_LIBRARY=/usr/lib/x86_64-linux-gnu
export CURL_INCLUDE_DIR=/usr/include/x86_64-linux-gnu/curl

##
## CRTM
##

export CRTM_VER=2.3.0
export CRTM_INC=/opt/CRTM-${CRTM_VER}/crtm_v${CRTM_VER}/include
export CRTM_LIB=/opt/CRTM-${CRTM_VER}/crtm_v${CRTM_VER}/lib/libcrtm.a

##
## ESMF
##

export ESMF_VERSION=/usr/local/esmf-8.0.0_bs40
export ESMF_DIR=${ESMF_VERSION}/
export ESMF_INC=${ESMF_VERSION}/include
export ESMF_BIN=${ESMF_VERSION}/bin
export ESMF_LIB=${ESMF_VERSION}/lib
export ESMF_MOD=${ESMF_VERSION}/mod
export ESMFMKFILE=${ESMF_VERSION}/lib/esmf.mk
export PATH="/opt/${ESMF_VERSION}/bin${PATH:+:$PATH}"
export LD_LIBRARY_PATH="${ESMF_VERSION}/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

##
## PATHS
##
export PATH="/opt/NCEPLIBS-prod_util/ush":${PATH}
export PATH="/opt/rocoto/bin":${PATH}
export COMDATEROOT='N/A on LINUX'
ln -sf /bin/bash /usr/bin/sbatch

