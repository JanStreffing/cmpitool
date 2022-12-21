#!/bin/bash

# Outer script for calling cmip6 model preproccessing. 
# Inner script may be placed on hpc queue in case multiple models shall be preprocessed.

# Setting up global config
workfolder=/work/ab0246/a270092/postprocessing/cmip6_cmpitool/
cleanup=true

# Setting up model specific config
declare -A basedir
#basedir[CESM2]=/pool/data/CMIP6/data/CMIP/NCAR/CESM2/historical/r1i1p1f1/
#basedir[ACCESS-CM2]=/pool/data/CMIP6/data/CMIP/CSIRO-ARCCSS/ACCESS-CM2/historical/r1i1p1f1/
#basedir[BCC-SM2-MR]=/pool/data/CMIP6/data/CMIP/BCC/BCC-CSM2-MR/historical/r1i1p1f1/
basedir[CAMS-CSM1-0]=/pool/data/CMIP6/data/CMIP/CAMS/CAMS-CSM1-0/historical/r1i1p1f1/

declare unit_level_oce
#unit_level_oce[CESM2]=cm
#unit_level_oce[ACCESS-CM2]=m
#unit_level_oce[BCC-SM2-MR]=m
unit_level_oce[CAMS-CSM1-0]=m

declare unit_level_atm
#unit_level_atm[CESM2]=Pa
#unit_level_atm[ACCESS-CM2]=Pa
#unit_level_atm[BCC-SM2-MR]=Pa
unit_level_atm[CAMS-CSM1-0]=Pa


for c in "${!basedir[@]}"; do
    printf "Model: $c; Base dir: ${basedir[$c]}; Unit of ocean levels: ${unit_level_oce[$c]}; Unit of atmosphere levels: ${unit_level_atm[$c]}\n"
    bash preprocess_CMIP6_inner.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]} ${unit_level_atm[$c]} &
done

