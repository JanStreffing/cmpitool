#!/bin/bash

Help()
{
   # Display Help
	echo "##############################################################################"
	echo "# This is an example script preparing climate output without CMOR complient  #"
	echo "# output from the cmip-tool                                                  #"
	echo "# Author: Jan Streffing 2022-01-18					   #"
	echo "##############################################################################"
	echo "Positional arguments:"
	echo "#1    directory containing raw model output"
	echo "#2    cmpi input subdirectory"
	echo "#3    name of climate model"
	echo "Positional optional argument:"
	echo "#4    boolean to delete tmp files"
}

origdir=$1 
outdir=$2 
model_name=$3 
deltmp=$4
gridfile="/p/project/chhb19/streffing1/input/fesom2/core2/core2_griddes_nodes.nc"

cd $origdir
tmpstr="analysis_cmpi_period"



for i in `seq 1990 2014`;
do
	for var in MLD1;
	do
		cdo cat fesom/${var}.fesom.${i}.nc ${var}_${tmpstr}.nc &
	done
	wait
done


printf "################\n"
printf "# remap FESOM2 #\n"
printf "################\n"

for var in MLD1;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${var}_${tmpstr}.nc weights_unstr_2_r180x91.nc
	cdo -L -remap,r180x91,weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc
done


cdo chname,MLD1,mlotst -divc,-1 MLD1_${tmpstr}_remap.nc  mlotst_${tmpstr}.nc &
wait

for var in mlotst;
do
	printf "cdo splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_"
	cdo splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_ &
done
wait


if $deltmp; then
	rm -rf ${tmpstr}
fi
