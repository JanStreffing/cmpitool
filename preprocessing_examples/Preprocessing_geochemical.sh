#!/bin/bash

Help()
{
   # Display Help
	echo "##############################################################################"
	echo "# This is an example script preparing climate output without CMOR complient  #"
	echo "# output from the cmip-tool                                                  #"
	echo "# Author: Jan Streffing/Lina Lucas 2024-03-10					   #"
	echo "##############################################################################"
	echo "Positional arguments:"
	echo "#1    The original path to folder of ocean and atmosphere model data"  
	echo "#2    Path where the Pre-preprocessed data should be stored"
	echo "#3    Path where preprocessed data should be stored"
	echo "#4    Name of the climate model (your free choice!)"
	echo "#5    Start year of analysed period"
	echo "#6    End year of analysed period"
	echo "Positional optional argument:"
	echo "#7    Set to true when temporary data (tmpstr) should be deleted"
	echo "#################################################"
	echo "# example: ./Preprocessing_geochemical.sh /home/llucas /home/llucas/CMPI_data/BM /home/llucas/cmpitool/preprocessed_data FOCI1.20.0-CC104_RCP_ESM_spinup2089 2009 2010 true" 
}

# Check if the script was called with the help option
if [[ $1 == "--help" ]]; then
  Help
  exit 0  # Exit successfully after displaying help
fi

printf "##########################\n"
printf "# read command line args #\n"
printf "##########################\n"
origdir=$1    # The original path to folder of ocean and atmosphere model data
predata=$2    # Path where the Pre-preprocessed data should be stored
outdir=$3     # Path where preprocessed data should be stored
model_name=$4 # Name of the climate model
starty=$5     # Start year of analysed period
endy=$6       # End year of analysed period
deltmp=${7}   # Set to true when temporary data (tmpstr) should be deleted


# Create folder of predata and go into the path of the Pre-preprocessed data
mkdir -p $predata
mkdir -p $outdir
cd $predata
tmpstr="analysis_cmpi_period"


# Delete files in the predata and out directory so the code can work properly
printf "##############################################\n"
printf "# clean up so we can create new files #\n"
printf "##############################################\n"

rm -f ${predata}/* 
rm -f ${predata}/*
rm -f ${outdir}/*${model_name}_${starty}-${endy}*
wait


printf "#################\n"
printf "# Loading files and selecting variables and timeperiod #\n"
printf "#################\n"

# Atmosphere 1
for var in ALK DIC DIN O2 PO4 ZOO PHY;
do
    cdo -select,startdate=${starty}-01-01T00:00:00,enddate=${endy}-01-01T00:00:00,name=${var} ${origdir}/${model_name}_1m_*_ptrc_T.nc ${var}_${starty}-${endy}.nc 
done
wait


cd $outdir


printf "#################\n"
printf "# ALK and DIC #\n"
printf "#################\n"

# Interpolating levels
for var in ALK DIC;
do
    cdo -L -intlevel,50,400,800,2000 -setctomiss,0 ${predata}/${var}_${starty}-${endy}.nc ${var}_${tmpstr}_int.nc 
done
wait 

# Split levels, change names, remap
cdo -L -splitlevel -chname,ALK,alk -remapbil,r180x91 ALK_${tmpstr}_int.nc alk_${tmpstr}_remap_
cdo -L -splitlevel -chname,DIC,co2 -remapbil,r180x91 DIC_${tmpstr}_int.nc co2_${tmpstr}_remap_
wait

# Adjust names
for lvl in 50 400 800 2000;
do
    mv -f alk_${tmpstr}_remap_$(printf "%06d" $lvl).nc alk_${model_name}_${starty}-${endy}_${lvl}m_year.nc
    mv -f co2_${tmpstr}_remap_$(printf "%06d" $lvl).nc co2_${model_name}_${starty}-${endy}_${lvl}m_year.nc
done



printf "#################\n"
printf "# DIN, O2, PO4 for seasonal means #\n"
printf "#################\n"

# Interpolating levels
cdo -L -intlevel,50,400,800 -setctomiss,0 ${predata}/DIN_${starty}-${endy}.nc DIN_${tmpstr}_int.nc 
cdo -L -intlevel,50,400,800 -setctomiss,0 ${predata}/PO4_${starty}-${endy}.nc PO4_${tmpstr}_int.nc 
cdo -L -intlevel,50,400,1000 -setctomiss,0 ${predata}/O2_${starty}-${endy}.nc O2_${tmpstr}_int.nc 
wait

# Split levels, change names, remap
cdo -L -splitlevel -chname,DIN,n -remapbil,r180x91 DIN_${tmpstr}_int.nc n_${tmpstr}_remap_
cdo -L -splitlevel -chname,PO4,p -remapbil,r180x91 PO4_${tmpstr}_int.nc p_${tmpstr}_remap_
cdo -L -splitlevel -chname,O2,o2 -remapbil,r180x91 O2_${tmpstr}_int.nc o2_${tmpstr}_remap_
wait

# Split seasons
for lvl in 50 400 800;
do
    cdo -L splitseas -yseasmean n_${tmpstr}_remap_$(printf "%06d" $lvl).nc n_${model_name}_${starty}-${endy}_${lvl}m_ &
    cdo -L splitseas -yseasmean p_${tmpstr}_remap_$(printf "%06d" $lvl).nc p_${model_name}_${starty}-${endy}_${lvl}m_ &
done

for lvl in 50 400 1000;
do
    cdo -L splitseas -yseasmean o2_${tmpstr}_remap_$(printf "%06d" $lvl).nc o2_${model_name}_${starty}-${endy}_${lvl}m_ &
done
wait


printf "#################\n"
printf "# ZOO and PHY #\n"
printf "#################\n"

# Interpolating levels
for var in ZOO PHY;
do
    cdo -L -intlevel,50 -setctomiss,0 ${predata}/${var}_${starty}-${endy}.nc ${var}_${tmpstr}_int.nc 
done
wait 

# Split levels, change names, remap
cdo -L -splitlevel -chname,ZOO,zoo -remapbil,r180x91 ZOO_${tmpstr}_int.nc zoo_${tmpstr}_remap_
cdo -L -splitlevel -chname,PHY,phy -remapbil,r180x91 PHY_${tmpstr}_int.nc phy_${tmpstr}_remap_
wait

# Adjust names
for lvl in 50;
do
    mv -f zoo_${tmpstr}_remap_$(printf "%06d" $lvl).nc zoo_${model_name}_${starty}-${endy}_${lvl}m_year.nc
    mv -f phy_${tmpstr}_remap_$(printf "%06d" $lvl).nc phy_${model_name}_${starty}-${endy}_${lvl}m_year.nc
done



# If deltmp set to true, deleting all the temporary files
if $deltmp; then
	printf "Deleting tmp data\n"
	rm -rf *${tmpstr}*
	rm -rf *_int*
fi
