BASE=$HOME/RUNS                                 ## Make sure you have access to the base directory
COMROT=$BASE/global/noscrub/$USER/fv3gfs/comrot ## default COMROT directory
EXPDIR=$BASE/global/save/$USER/fv3gfs/expdir    ## default EXPDIR directory
PTMP=$BASE/stmp2/$USER                          ## default PTMP directory
STMP=$BASE/stmp4/$USER                          ## default STMP directory
HOMEDIR=$BASE/global/$USER                      ## default HOMEDIR directory

GITDIR=$GFS_IMG_DIR/opt/global-workflow
#GITDIR=/opt/global-workflow
#    ICSDIR is assumed to be under $COMROT/FV3ICS
#         create link $COMROT/FV3ICS to point to /scratch4/BMC/rtfim/rtruns/FV3ICS


PSLOT=c384
IDATE=2019091700
EDATE=2019091800
RESDET=384               ## 96 192 384 768
GFSCYCLE=4
RESENS=192
NENS=20
CDUMP=gdas
ICDIR=/vol1/home/ICdir

./setup_expt.py --pslot $PSLOT  \
        --resdet $RESDET --resens $RESENS \
        --comrot $COMROT --expdir $EXPDIR \
        --idate $IDATE --edate $EDATE  --icsdir $ICDIR \
        --configdir $GITDIR/parm/config  --nens $NENS \
        --cdump $CDUMP --gfs_cyc $GFSCYCLE \
        --ptmp $PTMP --stmp $STMP

#for running chgres, forecast, and post 
./setup_workflow_fcstonly.py --expdir $EXPDIR/$PSLOT
                                                                                                                                                                     
