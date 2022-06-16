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
for var in salt;
do
    rm -f ${outdir}/${var}_${tmpstr}* 
done
wait


printf "##################################\n"
printf "# split off / interpolate levels #\n"
printf "##################################\n"
for i in `seq $starty $endy`;
do
	for var in salt;
	do
		cdo -intlevel,10,100,1000,4000 -setctomiss,0 fesom/${var}.fesom.${i}.nc ${outdir}/${var}.fesom.${i}.int.nc &
	done
done
wait

printf "#######################################\n"
printf "# cat together analysis period part 2 #\n"
printf "#######################################\n"


for i in `seq $starty $endy`;
do
	for var in salt;
	do
		cdo cat ${outdir}/${var}.fesom.${i}.int.nc ${outdir}/${var}_${tmpstr}.nc &
	done
	wait
done

mkdir -p $outdir
cd $outdir


printf "################\n"
printf "# remap FESOM2 #\n"
printf "################\n"
for var in salt;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${outdir}/${var}_${tmpstr}.nc ${outdir}/weights_unstr_2_r180x91_${var}.nc &
done
wait

for var in salt;
do
	cdo -L -splitlevel -remap,r180x91,weights_unstr_2_r180x91_${var}.nc -setctomiss,0 -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_ &
done
wait

for var in salt;
do
        for lvl in "000010" "000100" "001000" "004000";
        do
		mv ${var}_${tmpstr}_${lvl}.nc ${var}_${tmpstr}_${lvl}_remap.nc &
	done
done
wait


for lvl in "000010" "000100" "001000" "004000";
do
	cdo chname,salt,so salt_${tmpstr}_${lvl}_remap.nc so_${tmpstr}_${lvl}.nc &
done
wait

for var in so
do
	for lvl in 10 100 1000 4000;
	do
		cdo -L splitseas -yseasmean ${var}_${tmpstr}_$(printf "%06d" $lvl).nc $outdir/${var}_${model_name}_198912-201411_${lvl}m_ &
	done
done
wait

if $deltmp; then
	printf "Deleting tmp data"
	rm -rf *${tmpstr}*
fi
