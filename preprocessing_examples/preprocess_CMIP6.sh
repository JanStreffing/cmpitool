#!/bin/bash
#SBATCH --job-name=cmpitool
#SBATCH --partition=shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=128
#SBATCH --time=48:00:00
#SBATCH --output=output_file.log
#SBATCH --error=error_file.log
#SBATCH --account=ab0246

# Outer script for calling cmip6 model preproccessing for cmpitool. 
# Inner scripts may run in parallel by adding & after call. Requires cdo version > 2.0.5 (https://code.mpimet.mpg.de/projects/cdo/)
# If you don't add any new variable or layer, consider just downloading
# the preprocessed cmip6 data from zenodo: 

module load cdo

# Setting up global config
workfolder=/work/ab0246/a270092/postprocessing/cmip6_cmpitool/
cleanup=true

# Setting up model specific config
declare -A basedir
basedir[ACCESS-CM2]=/pool/data/CMIP6/data/CMIP/CSIRO-ARCCSS/ACCESS-CM2/historical/r1i1p1f1/
basedir[AWI-CM-1-1-MR]=/pool/data/CMIP6/data/CMIP/AWI/AWI-CM-1-1-MR/historical/r1i1p1f1
basedir[BCC-SM2-MR]=/pool/data/CMIP6/data/CMIP/BCC/BCC-CSM2-MR/historical/r1i1p1f1/
basedir[CAMS-CSM1-0]=/pool/data/CMIP6/data/CMIP/CAMS/CAMS-CSM1-0/historical/r1i1p1f1/
basedir[CanESM5]=/pool/data/CMIP6/data/CMIP/CCCma/CanESM5/historical/r1i1p1f1/
basedir[CAS-ESM2-0]=/pool/data/CMIP6/data/CMIP/CAS/CAS-ESM2-0/historical/r1i1p1f1/
basedir[CESM2]=/pool/data/CMIP6/data/CMIP/NCAR/CESM2/historical/r1i1p1f1/
basedir[CIESM]=/pool/data/CMIP6/data/CMIP/THU/CIESM/historical/r1i1p1f1/
basedir[CNRM-CM6-1-HR]=/pool/data/CMIP6/data/CMIP/CNRM-CERFACS/CNRM-CM6-1-HR/historical/r1i1p1f2/
basedir[CMCC-CM2-SR5]=/pool/data/CMIP6/data/CMIP/CMCC/CMCC-CM2-SR5/historical/r1i1p1f1/
basedir[E3SM-1-1]=/pool/data/CMIP6/data/CMIP/E3SM-Project/E3SM-1-1/historical/r1i1p1f1/
basedir[EC-Earth3]=/pool/data/CMIP6/data/CMIP/EC-Earth-Consortium/EC-Earth3/historical/r1i1p1f1/
basedir[FGOALS-f3-L]=/pool/data/CMIP6/data/CMIP/CAS/FGOALS-f3-L/historical/r1i1p1f1/
basedir[FIO-ESM-2-0]=/pool/data/CMIP6/data/CMIP/FIO-QLNM/FIO-ESM-2-0/historical/r1i1p1f1/
basedir[GFDL-CM4]=/pool/data/CMIP6/data/CMIP/NOAA-GFDL/GFDL-CM4/historical/r1i1p1f1/
basedir[GISS-E2-1-G]=/pool/data/CMIP6/data/CMIP/NASA-GISS/GISS-E2-1-G/historical/r1i1p1f1/
basedir[HadGEM3MM]=/pool/data/CMIP6/data/CMIP/MOHC/HadGEM3-GC31-MM/historical/r1i1p1f3/
basedir[ICON-ESM-LR]=/pool/data/CMIP6/data/CMIP/MPI-M/ICON-ESM-LR/historical/r1i1p1f1/
basedir[IITM-ESM]=/pool/data/CMIP6/data/CMIP/CCCR-IITM/IITM-ESM/historical/r1i1p1f1/
basedir[INM-CM5-0]=/pool/data/CMIP6/data/CMIP/INM/INM-CM5-0/historical/r1i1p1f1/
basedir[IPSL-CM6A-LR]=/pool/data/CMIP6/data/CMIP/IPSL/IPSL-CM6A-LR/historical/r1i1p1f1/
basedir[KIOST-ESM]=/pool/data/CMIP6/data/CMIP/KIOST/KIOST-ESM/historical/r1i1p1f1/
basedir[MCM-UA-1-0]=/pool/data/CMIP6/data/CMIP/UA/MCM-UA-1-0/historical/r1i1p1f1/
basedir[MIROC6]=/pool/data/CMIP6/data/CMIP/MIROC/MIROC6/historical/r1i1p1f1/
basedir[MPI-ESM1-2-HR]=/pool/data/CMIP6/data/CMIP/MPI-M/MPI-ESM1-2-HR/historical/r1i1p1f1/
basedir[MRI-ESM2-0]=/pool/data/CMIP6/data/CMIP/MRI/MRI-ESM2-0/historical/r1i1p1f1
basedir[NESM3]=/pool/data/CMIP6/data/CMIP/NUIST/NESM3/historical/r1i1p1f1/
basedir[NorESM2-MM]=/pool/data/CMIP6/data/CMIP/NCC/NorESM2-MM/historical/r1i1p1f1/
basedir[SAM0-UNICON]=/pool/data/CMIP6/data/CMIP/SNU/SAM0-UNICON/historical/r1i1p1f1/
basedir[TaiESM1]=/pool/data/CMIP6/data/CMIP/AS-RCEC/TaiESM1/historical/r1i1p1f1/

# Allows for different unit of ocean depth. e.g. for CESM2
declare -A unit_level_oce
unit_level_oce[ACCESS-CM2]=m
unit_level_oce[AWI-CM-1-1-MR]=m
unit_level_oce[BCC-SM2-MR]=m
unit_level_oce[CAMS-CSM1-0]=m
unit_level_oce[CanESM5]=m
unit_level_oce[CAS-ESM2-0]=m
unit_level_oce[CESM2]=cm
unit_level_oce[CIESM]=m
unit_level_oce[CNRM-CM6-1-HR]=m
unit_level_oce[CMCC-CM2-SR5]=m
unit_level_oce[E3SM-1-1]=m
unit_level_oce[EC-Earth3]=m
unit_level_oce[FGOALS-f3-L]=m
unit_level_oce[FIO-ESM-2-0]=m
unit_level_oce[GISS-E2-1-G]=m
unit_level_oce[GFDL-CM4]=m
unit_level_oce[HadGEM3MM]=m
unit_level_oce[ICON-ESM-LR]=m
unit_level_oce[IITM-ESM]=m
unit_level_oce[INM-CM5-0]=m
unit_level_oce[IPSL-CM6A-LR]=m
unit_level_oce[KIOST-ESM]=m
unit_level_oce[MCM-UA-1-0]=m
unit_level_oce[MIROC6]=m
unit_level_oce[MPI-ESM1-2-HR]=m
unit_level_oce[MRI-ESM2-0]=m
unit_level_oce[NESM3]=m
unit_level_oce[NorESM2-MM]=m
unit_level_oce[SAM0-UNICON]=m
unit_level_oce[TaiESM1]=m

# For unstructured meshe interpolation a mesh description file is needed that does not come with the cmip6 data
declare -A atm_gridfile_path
atm_gridfile_path[ACCESS-CM2]=
atm_gridfile_path[AWI-CM-1-1-MR]=
atm_gridfile_path[BCC-SM2-MR]=
atm_gridfile_path[CAMS-CSM1-0]=
atm_gridfile_path[CanESM5]=
atm_gridfile_path[CAS-ESM2-0]=
atm_gridfile_path[CESM2]=
atm_gridfile_path[CIESM]=
atm_gridfile_path[CNRM-CM6-1-HR]=
atm_gridfile_path[CMCC-CM2-SR5]=
atm_gridfile_path[E3SM-1-1]=
atm_gridfile_path[EC-Earth3]=
atm_gridfile_path[FGOALS-f3-L]=
atm_gridfile_path[FIO-ESM-2-0]=
atm_gridfile_path[GISS-E2-1-G]=
atm_gridfile_path[GFDL-CM4]=
atm_gridfile_path[HadGEM3MM]=
atm_gridfile_path[ICON-ESM-LR]=/pool/data/ICON/grids/public/mpim/0013/icon_grid_0013_R02B04_G.nc
atm_gridfile_path[IITM-ESM]=
atm_gridfile_path[INM-CM5-0]=
atm_gridfile_path[IPSL-CM6A-LR]=
atm_gridfile_path[KIOST-ESM]=
atm_gridfile_path[MCM-UA-1-0]=
atm_gridfile_path[MIROC6]=
atm_gridfile_path[MPI-ESM1-2-HR]=
atm_gridfile_path[MRI-ESM2-0]=
atm_gridfile_path[NESM3]=
atm_gridfile_path[NorESM2-MM]=
atm_gridfile_path[SAM0-UNICON]=
atm_gridfile_path[TaiESM1]=

# For unstructured meshe interpolation a mesh description file is needed that does not come with the cmip6 data
declare -A oce_gridfile_path
oce_gridfile_path[ACCESS-CM2]=
oce_gridfile_path[AWI-CM-1-1-MR]=/pool/data/AWICM/FESOM1/MESHES/glob/griddes.nc
oce_gridfile_path[BCC-SM2-MR]=
oce_gridfile_path[CAMS-CSM1-0]=
oce_gridfile_path[CanESM5]=
oce_gridfile_path[CAS-ESM2-0]=
oce_gridfile_path[CESM2]=
oce_gridfile_path[CIESM]=
oce_gridfile_path[CNRM-CM6-1-HR]=
oce_gridfile_path[CMCC-CM2-SR5]=
oce_gridfile_path[E3SM-1-1]=
oce_gridfile_path[EC-Earth3]=
oce_gridfile_path[FGOALS-f3-L]=
oce_gridfile_path[FIO-ESM-2-0]=
oce_gridfile_path[GISS-E2-1-G]=
oce_gridfile_path[GFDL-CM4]=
oce_gridfile_path[HadGEM3MM]=
oce_gridfile_path[ICON-ESM-LR]=/pool/data/ICON/oes/input/r0004/OceanOnly_Global_IcosSymmetric_0039km_rotatedZ37d_BlackSea_Greenland_modified_srtm30_1min/OceanOnly_Global_IcosSymmetric_0039km_rotatedZ37d_BlackSea_Greenland_modified_sills_srtm30_1min.nc
oce_gridfile_path[IITM-ESM]=
oce_gridfile_path[INM-CM5-0]=
oce_gridfile_path[IPSL-CM6A-LR]=
oce_gridfile_path[KIOST-ESM]=
oce_gridfile_path[MCM-UA-1-0]=
oce_gridfile_path[MIROC6]=
oce_gridfile_path[MPI-ESM1-2-HR]=
oce_gridfile_path[MRI-ESM2-0]=
oce_gridfile_path[NESM3]=
oce_gridfile_path[NorESM2-MM]=
oce_gridfile_path[SAM0-UNICON]=
oce_gridfile_path[TaiESM1]=

# We call slightly different script for unstructured model components than for structed ones
for c in "${!basedir[@]}"; do
    printf "Model: $c; Base dir: ${basedir[$c]}; Unit of ocean levels: ${unit_level_oce[$c]}\n"
    if [ -z ${atm_gridfile_path[$c]} ]; then
        if [ -z ${oce_gridfile_path[$c]} ]; then
            echo "using script for structured atm & oce grids\n"
            bash structured.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]}
        else
            echo "using script for structured atm & unstructured oce grids\n"
            bash unstructured_oce.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]} ${oce_gridfile_path[$c]}
        fi
    else
        echo "using script for unstructured atm & oce grids\n"
        bash unstructured_both.sh $workfolder ${basedir[$c]} $c $cleanup ${unit_level_oce[$c]} ${atm_gridfile_path[$c]} ${oce_gridfile_path[$c]}
    fi
done

