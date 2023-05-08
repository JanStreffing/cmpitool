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
	echo "#1    fesom outdata dir of run"
	echo "#2    cmpi input subdirectory"
	echo "#3    name of the model/run (your free choice!)"
	echo "#4    first year of analysis period"
	echo "#5    last year of analysis period"
	echo "#6    path to fesom2 grid description netcdf file"
	echo "Positional optional argument:"
	echo "#7    boolean to delete tmp files"
	echo "#################################################"
	echo "# example: ./preprocess_FESOM.sh /p/scratch/chhb19/streffing1/runtime/awicm3-frontiers-xios/test_for_cmip/outdata/fesom /p/project/chhb19/streffing1/software/cmpi-tool/input/ FESOM-test 2000 2000 /p/project/chhb19/streffing1/input/fesom2/core2/core2_griddes_nodes.nc"
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
for var in temp salt MLD3 ssh sst a_ice;
do
    rm -f ${outdir}/${var}_${tmpstr}*
done
wait


printf "##############################################################\n"
printf "# interpolate levels and cat together analysis period part 2 #\n"
printf "##############################################################\n"


for i in `seq $starty $endy`;
do
        for var in MLD3 ssh sst a_ice;
        do
                cdo cat ${var}.fesom.${i}.nc ${outdir}/${var}_${tmpstr}.nc &
        done
        for var in temp salt;
        do
                cdo cat -intlevel,10,100,1000,4000 -setctomiss,0 ${var}.fesom.${i}.nc ${outdir}/${var}_${tmpstr}.nc &
        done
        wait
done

mkdir -p $outdir
cd $outdir


printf "################\n"
printf "# remap FESOM2 #\n"
printf "################\n"
for var in temp salt;
do
        cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${outdir}/${var}_${tmpstr}.nc ${outdir}/weights_unstr_2_r180x91_${var}.nc &
done
wait

for var in temp salt;
do
        cdo -L -splitlevel -remap,r180x91,weights_unstr_2_r180x91_${var}.nc -setctomiss,0 -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_ &
done
wait

for var in temp salt;
do
        for lvl in "000010" "000100" "001000" "004000";
        do
                mv ${var}_${tmpstr}_${lvl}.nc ${var}_${tmpstr}_${lvl}_remap.nc &
        done
done
wait


for var in MLD3 a_ice;
do
        cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${outdir}/${var}_${tmpstr}.nc ${outdir}/weights_unstr_2_r180x91.nc
        cdo -L -remap,r180x91,weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc
done


cdo -L -splitseas -chname,ssh,zos -setmissval,0 ssh_${tmpstr}.nc zos_${tmpstr}_ &
cdo -L -splitseas -chname,sst,tos sst_${tmpstr}.nc tos_${tmpstr}_ &

wait
cdo genycon,r180x91 -selname,zos -setgrid,$gridfile ${outdir}/zos_${tmpstr}_DJF.nc ${outdir}/weights_zos_unstr_2_r180x91.nc
cdo genycon,r180x91 -selname,tos -setgrid,$gridfile ${outdir}/tos_${tmpstr}_DJF.nc ${outdir}/weights_tos_unstr_2_r180x91.nc
for seas in DJF MAM JJA SON;
do
        cdo -L -remap,r180x91,weights_zos_unstr_2_r180x91.nc -timstd -selname,zos -setgrid,$gridfile zos_${tmpstr}_${seas}.nc zos_${model_name}_198912-201411_surface_${seas}.nc &
        cdo -L -remap,r180x91,weights_tos_unstr_2_r180x91.nc -timstd -selname,tos -setgrid,$gridfile tos_${tmpstr}_${seas}.nc tos_${model_name}_198912-201411_surface_${seas}.nc &
done
wait


printf "########################################\n"
printf "# quasi CMORize data so it matches obs #\n"
printf "########################################\n"
cdo chname,a_ice,siconc a_ice_${tmpstr}_remap.nc siconc_${tmpstr}_tmp.nc
cdo mulc,100 siconc_${tmpstr}_tmp.nc siconc_${tmpstr}.nc &

cdo chname,MLD3,mlotst -divc,-1 MLD3_${tmpstr}_remap.nc  mlotst_${tmpstr}.nc &
wait


for var in siconc mlotst;
do
        cdo -L splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_surface_ &
done


for lvl in "000010" "000100" "001000" "004000";
do
        cdo chname,salt,so salt_${tmpstr}_${lvl}_remap.nc so_${tmpstr}_${lvl}.nc &
        cdo chname,temp,thetao temp_${tmpstr}_${lvl}_remap.nc thetao_${tmpstr}_${lvl}.nc &
done
wait

for var in thetao
do
        for lvl in 10 100 1000 4000;
        do
                cdo -L splitseas  -yseasmean ${var}_${tmpstr}_$(printf "%06d" $lvl).nc $outdir/${var}_${model_name}_198912-201411_${lvl}m_ &
        done
done
for var in so
do
        for lvl in 10 100 1000 4000;
        do
                cdo -L splitseas -yseasmean ${var}_${tmpstr}_$(printf "%06d" $lvl).nc $outdir/${var}_${model_name}_198912-201411_${lvl}m_ &
        done
done
wait

if $deltmp; then
        printf "Deleting tmp data\n"
        rm -rf *${tmpstr}*
fi
