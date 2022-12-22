#!/bin/bash

# Outer script for calling cmip6 model preproccessing. 
# Inner script may be placed on hpc queue in case multiple models shall be preprocessed.

# Setting up global config
workfolder=/work/ab0246/a270092/postprocessing/cmip6_cmpitool/
cleanup=true

# Setting up model specific config
declare -A basedir
#basedir[ACCESS-CM2]=/pool/data/CMIP6/data/CMIP/CSIRO-ARCCSS/ACCESS-CM2/historical/r1i1p1f1/
#basedir[BCC-SM2-MR]=/pool/data/CMIP6/data/CMIP/BCC/BCC-CSM2-MR/historical/r1i1p1f1/
#basedir[CAMS-CSM1-0]=/pool/data/CMIP6/data/CMIP/CAMS/CAMS-CSM1-0/historical/r1i1p1f1/
#basedir[CanESM5]=/pool/data/CMIP6/data/CMIP/CCCma/CanESM5/historical/r1i1p1f1/
#basedir[CAS-ESM2-0]=/pool/data/CMIP6/data/CMIP/CAS/CAS-ESM2-0/historical/r1i1p1f1/
#basedir[CESM2]=/pool/data/CMIP6/data/CMIP/NCAR/CESM2/historical/r1i1p1f1/
#basedir[CIESM]=/pool/data/CMIP6/data/CMIP/THU/CIESM/historical/r1i1p1f1/
#basedir[CMCC-CM2-SR5]=/pool/data/CMIP6/data/CMIP/CMCC/CMCC-CM2-SR5/historical/r1i1p1f1/
#basedir[CNRM-CM6-1-HR]=/pool/data/CMIP6/data/CMIP/CNRM-CERFACS/CNRM-CM6-1-HR/historical/r1i1p1f2/
#basedir[E3SM-1-1]=/pool/data/CMIP6/data/CMIP/E3SM-Project/E3SM-1-1/historical/r1i1p1f1/
#basedir[EC-Earth3]=/pool/data/CMIP6/data/CMIP/EC-Earth-Consortium/EC-Earth3/historical/r1i1p1f1/
#basedir[FGOALS-f3-L]=/pool/data/CMIP6/data/CMIP/CAS/FGOALS-f3-L/historical/r1i1p1f1/
#basedir[FIO-ESM-2-0]=/pool/data/CMIP6/data/CMIP/FIO-QLNM/FIO-ESM-2-0/historical/r1i1p1f1/
#basedir[GISS-E2-1-G]=/pool/data/CMIP6/data/CMIP/NASA-GISS/GISS-E2-1-G/historical/r1i1p1f1/
#basedir[HadGEM3MM]=/pool/data/CMIP6/data/CMIP/MOHC/HadGEM3-GC31-MM/historical/r1i1p1f3/
basedir[ICON-ESM-LR]=/pool/data/CMIP6/data/CMIP/MPI-M/ICON-ESM-LR/historical/r1i1p1f1/

declare -A unit_level_oce
#unit_level_oce[ACCESS-CM2]=m
#unit_level_oce[BCC-SM2-MR]=m
#unit_level_oce[CAMS-CSM1-0]=m
#unit_level_oce[CanESM5]=m
#unit_level_oce[CAS-ESM2-0]=m
#unit_level_oce[CESM2]=cm
#unit_level_oce[CIESM]=m
#unit_level_oce[CMCC-CM2-SR5]=m
#unit_level_oce[CNRM-CM6-1-HR]=m
#unit_level_oce[E3SM-1-1]=m
#unit_level_oce[EC-Earth3]=m
#unit_level_oce[FGOALS-f3-L]=m
#unit_level_oce[FIO-ESM-2-0]=m
#unit_level_oce[GISS-E2-1-G]=m
#unit_level_oce[HadGEM3MM]=m
unit_level_oce[ICON-ESM-LR]=m

declare -A atm_gridfile_path
#atm_gridfile_path[ACCESS-CM2]=
#atm_gridfile_path[BCC-SM2-MR]=
#atm_gridfile_path[CAMS-CSM1-0]=
#atm_gridfile_path[CanESM5]=
#atm_gridfile_path[CAS-ESM2-0]=
#atm_gridfile_path[CESM2]=
#atm_gridfile_path[CIESM]=
#atm_gridfile_path[CMCC-CM2-SR5]=
#atm_gridfile_path[CNRM-CM6-1-HR]=
#atm_gridfile_path[E3SM-1-1]=
#atm_gridfile_path[EC-Earth3]=
#atm_gridfile_path[FGOALS-f3-L]=
#atm_gridfile_path[FIO-ESM-2-0]=
#atm_gridfile_path[GISS-E2-1-G]=
#atm_gridfile_path[HadGEM3MM]=
atm_gridfile_path[ICON-ESM-LR]=/pool/data/ICON/grids/public/mpim/0013/icon_grid_0013_R02B04_G.nc

declare -A oce_gridfile_path
#oce_gridfile_path[ACCESS-CM2]=
#oce_gridfile_path[BCC-SM2-MR]=
#oce_gridfile_path[CAMS-CSM1-0]=
#oce_gridfile_path[CanESM5]=
#oce_gridfile_path[CAS-ESM2-0]=
#oce_gridfile_path[CESM2]=
#oce_gridfile_path[CIESM]=
#oce_gridfile_path[CMCC-CM2-SR5]=
#oce_gridfile_path[CNRM-CM6-1-HR]=
#oce_gridfile_path[E3SM-1-1]=
#oce_gridfile_path[EC-Earth3]=
#oce_gridfile_path[FGOALS-f3-L]=
#oce_gridfile_path[FIO-ESM-2-0]=
#oce_gridfile_path[GISS-E2-1-G]=
#oce_gridfile_path[HadGEM3MM]=
oce_gridfile_path[ICON-ESM-LR]=/pool/data/ICON/oes/input/r0004/OceanOnly_Global_IcosSymmetric_0039km_rotatedZ37d_BlackSea_Greenland_modified_srtm30_1min/OceanOnly_Global_IcosSymmetric_0039km_rotatedZ37d_BlackSea_Greenland_modified_sills_srtm30_1min.nc


for c in "${!basedir[@]}"; do
    printf "Model: $c; Base dir: ${basedir[$c]}; Unit of ocean levels: ${unit_level_oce[$c]}\n"
    if [ -z ${atm_gridfile_path[$c]+x} ] && [ -z ${oce_gridfile_path[$c]+x} ]; then
        bash structured.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]}
    elif [[ -z ${oce_gridfile_path[$c]} ]] && [[ -v ${oce_gridfile_path[$c]} ]]; then
        bash unstructured_oce.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]} ${oce_gridfile_path[$c]}
    else
        bash unstructured_both.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]} ${atm_gridfile_path[$c]} ${oce_gridfile_path[$c]}&
    fi
done

