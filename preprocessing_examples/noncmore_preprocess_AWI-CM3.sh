#!/bin/bash

Help()
{
   # Display Help
	echo "##############################################################################"
	echo "# This is an example script preparing climate output without CMOR complient  #"
	echo "# output for  the cmip-tool                                                  #"
	echo "# Author: Jan Streffing 2022-01-18					                       #"
	echo "##############################################################################"
	echo "# Positional arguments:                                                      #"
	echo "#  1 directory containing raw model output                                   #"
	echo "#  2 cmpi input subdirectory                                                 #"
	echo "#  3 name of climate model                                                   #"
	echo "# Positional optional argument:                                              #"
	echo "#  4 boolean to delete tmp files                                             #"
	echo "##############################################################################"
}

Help

origdir=$1 
outdir=$2 
model_name=$3 
deltmp=$4
gridfile="/p/project/chhb19/streffing1/input/fesom2/core2/CORE2_finaltopo_mean.nc"

cd $origdir
tmpstr="analysis_cmpi_period"


for i in `seq 1990 2014`;
do
	for var in temp salt;
	do
		cdo -intlevel,10,100,1000,4000 fesom/${var}.fesom.${i}.nc fesom/${var}.fesom.${i}.int.nc &
	done
done
wait

for i in `seq 8 9`;
do
	for var in CI T2M TTR TCC CP LSP U10M V10M U V Z;
	do
		rm -f ${var}_${tmpstr}.nc
		cdo cat oifs/links/${var}_$(printf "%05d" $i).nc ${var}_${tmpstr}.nc &
	done
done
wait

for i in `seq 1990 2014`;
do
	for var in MLD1 ssh sst;
	do
		cdo cat fesom/${var}.fesom.${i}.nc ${var}_${tmpstr}.nc &
	done
	for var in temp salt;
	do
		cdo cat fesom/${var}.fesom.${i}.int.nc ${var}_${tmpstr}.nc &
	done
	wait
done


printf "################\n"
printf "# remap FESOM2 #\n"
printf "################\n"
for var in temp salt;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${var}_${tmpstr}.nc weights_unstr_2_r180x91_${var}.nc &
done
wait

for var in temp salt;
do
	cdo -L -splitlevel -remap,r180x91,weights_unstr_2_r180x91_${var}.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_ &
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


for var in MLD1;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${var}_${tmpstr}.nc weights_unstr_2_r180x91.nc
	cdo -L -remap,r180x91,weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc
done


cdo -L -splitseas -chname,ssh,zos ssh_${tmpstr}.nc zos_${tmpstr}_ &
cdo -L -splitseas -chname,sst,tos sst_${tmpstr}.nc tos_${tmpstr}_ &
wait
cdo genycon,r180x91 -selname,zos -setgrid,$gridfile zos_${tmpstr}_DJF.nc weights_zos_unstr_2_r180x91.nc
cdo genycon,r180x91 -selname,tos -setgrid,$gridfile tos_${tmpstr}_DJF.nc weights_tos_unstr_2_r180x91.nc
for seas in DJF MAM JJA SON;
do
	cdo -L -remap,r180x91,weights_zos_unstr_2_r180x91.nc -timstd -selname,zos -setgrid,$gridfile zos_${tmpstr}_${seas}.nc $outdir/zos_${model_name}_198912-201411_surface_${seas}.nc &
	cdo -L -remap,r180x91,weights_tos_unstr_2_r180x91.nc -timstd -selname,tos -setgrid,$gridfile tos_${tmpstr}_${seas}.nc $outdir/tos_${model_name}_198912-201411_surface_${seas}.nc &
done
wait


printf "#################\n"
printf "# remap OpenIFS #\n"
printf "#################\n"

for i in `seq 8 9`;
do
	for var in CI T2M TTR TCC CP LSP U10M V10M U V Z;
	do
		cdo remapbil,r180x91 ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc &
	done
done
wait

cdo mulc,100 -chname,CI,siconc CI_${tmpstr}_remap.nc siconc_${tmpstr}.nc

cdo chname,T2M,tas T2M_${tmpstr}_remap.nc tas_${tmpstr}.nc

cdo mulc,100 -chname,TCC,clt TCC_${tmpstr}_remap.nc clt_${tmpstr}.nc

cdo divc,24 -chname,LSP,pr LSP_${tmpstr}_remap.nc lsp_r_${tmpstr}.nc
cdo divc,24 -chname,CP,pr CP_${tmpstr}_remap.nc cp_r_${tmpstr}.nc
cdo add lsp_r_${tmpstr}.nc cp_r_${tmpstr}.nc pr_${tmpstr}.nc

cdo divc,-21600 -chname,TTR,rlut TTR_${tmpstr}_remap.nc rlut_${tmpstr}.nc

cdo chname,U10M,uas U10M_${tmpstr}_remap.nc uas_${tmpstr}.nc

cdo chname,V10M,vas V10M_${tmpstr}_remap.nc vas_${tmpstr}.nc

cdo chname,U,ua U_${tmpstr}_remap.nc ua_l19_${tmpstr}.nc
cdo sellevel,30000 ua_l19_${tmpstr}.nc ua_${tmpstr}.nc

cdo chname,Z,zg Z_${tmpstr}_remap.nc zg_l19_${tmpstr}.nc
cdo divc,9.807 -sellevel,50000 zg_l19_${tmpstr}.nc zg_${tmpstr}.nc

cdo chname,MLD1,mlotst -divc,-1 MLD1_${tmpstr}_remap.nc  mlotst_${tmpstr}.nc &
wait

for var in siconc tas clt pr rlut uas vas mlotst;
do
	cdo splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_surface_ &
done
cdo -L splitseas -yseasmean ua_${tmpstr}.nc $outdir/ua_${model_name}_198912-201411_300hPa_ &
cdo -L splitseas -yseasmean zg_${tmpstr}.nc $outdir/zg_${model_name}_198912-201411_500hPa_ &


for lvl in "000010" "000100" "001000" "004000";
do
	cdo chname,salt,so salt_${tmpstr}_${lvl}_remap.nc so_${tmpstr}_${lvl}.nc &
	cdo chname,temp,thetao temp_${tmpstr}_${lvl}_remap.nc thetao_${tmpstr}_${lvl}.nc &
done
wait

for var in thetao so
do
	for lvl in 10 100 1000 4000;
	do
		cdo -L -splitseas -setctomiss,0 -yseasmean ${var}_${tmpstr}_$(printf "%06d" $lvl).nc $outdir/${var}_${model_name}_198912-201411_${lvl}m_ &
	done
done
wait



if $deltmp; then
	rm -rf ${tmpstr}
fi
