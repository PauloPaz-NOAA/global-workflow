PSLOT=c768
BASE=/NCEPPROD/RUNS
COMROT=$BASE/comrot
EXPDIR=$BASE/expdir
IDATE=2020100100
EDATE=2020100400
RESDET=384
RESENS=192
GFS_CYC=4
NENS=0
CDUMP=gdas
GITDIR=$GFS_IMG_DIR/opt/global-workflow

#GITDIR=/opt/global-workflow
#    ICSDIR is assumed to be under $COMROT/FV3ICS
#         create link $COMROT/FV3ICS to point to /scratch4/BMC/rtfim/rtruns/FV3ICS

./setup_expt.py --pslot $PSLOT \
        --resdet $RESDET \
        --resens $RESENS \
        --comrot $COMROT \
        --expdir $EXPDIR \
        --idate $IDATE \
        --edate $EDATE \
        --configdir $GITDIR/parm/config \
        --nens $NENS \
        --cdump $CDUMP \
        --gfs_cyc $GFS_CYC
