#!/bin/sh

export FFLAGS="-O3 -g -fdefault-real-8"
# for debugging
#export FFLAGS="-g -r8 -i4 -warn unused -check bounds"

export NETCDF_INCLUDE="-I${NETCDF}/include"
export NETCDF_LDFLAGS_F="-L${NETCDF}/lib -lnetcdf -lnetcdff -L${HDF5}/lib -lhdf5 -lhdf5_fortran"

make clean
make build
err=$?
if [ $err -ne 0 ]; then
  echo ERROR BUILDING GAUSSIAN_SFCANL
  exit 2
fi
make install

exit
