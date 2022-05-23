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
	echo "#1    esm_tools outdata dir of run"
	echo "#2    cmpi input subdirectory"
	echo "#3    name of the model/run (your free choice!)"
	echo "#4    first year of analysis period"
	echo "#5    last year of analysis period"
	echo "#6    path to fesom2 grid description netcdf file"
	echo "Positional optional argument:"
	echo "#7    boolean to delete tmp files"
	echo "#################################################"
	echo "# example: ./noncmore_preprocess_AWI-CM3-XIOS.sh /p/scratch/chhb19/streffing1/runtime/awicm3-frontiers-xios/test_for_cmip/outdata /p/project/chhb19/streffing1/software/cmpi-tool/input/ AWI-CM3-test 2000 2000 /p/project/chhb19/streffing1/input/fesom2/core2/core2_griddes_nodes.nc"
}


printf "##########################\n"
printf "# read command line args #\n"
printf "##########################\n"
origdir=$1 
outdir=$2 
model_name=$3 
starty=$4
endy=$5
gridfile=$6
deltmp=$7

cd $origdir
tmpstr="analysis_cmpi_period"


printf "##############################################\n"
printf "# clean up so cat does not do strange things #\n"
printf "##############################################\n"
for var in MLD2;
do
    rm -f ${outdir}/${var}_${tmpstr}* 
done
wait


printf "#######################################\n"
printf "# cat together analysis period part 2 #\n"
printf "#######################################\n"


for i in `seq $starty $endy`;
do
	for var in MLD2;
	do
		cdo cat fesom/${var}.fesom.${i}.nc ${outdir}/${var}_${tmpstr}.nc &
	done
	wait
done

mkdir -p $outdir
cd $outdir


printf "################\n"
printf "# remap FESOM2 #\n"
printf "################\n"
for var in MLD2;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${outdir}/${var}_${tmpstr}.nc ${outdir}/weights_unstr_2_r180x91.nc
	cdo -L -remap,r180x91,weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc
done
wait
pwd

cdo chname,MLD2,mlotst -divc,-1 MLD2_${tmpstr}_remap.nc  mlotst2_${tmpstr}.nc &
wait

for var in mlotst2;
do
    cdo splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_surface_ &
done
wait

if $deltmp; then
	printf "Deleting tmp data\n"
	rm -rf *${tmpstr}*
fi
