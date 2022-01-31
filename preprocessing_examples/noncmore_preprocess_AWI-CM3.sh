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

cd $origdir
tmpstr="analysis_cmpi_period"

for i in `seq 8 9`;
do
	for var in CI T2M TTR TCC CP LSP U10M V10M U V Z;
	do
		rm -f ${var}_${tmpstr}.nc
		cdo cat ${var}_$(printf "%05d" $i).nc ${var}_${tmpstr}.nc &
	done
done
wait
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


for var in siconc tas clt pr rlut uas vas ua zg;
do
	cdo splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_ &
done
wait
if $deltmp; then
	rm -rf ${tmpstr}
fi
