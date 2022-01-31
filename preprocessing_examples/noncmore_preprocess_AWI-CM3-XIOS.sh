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
	echo "#4    first year of analysis period"
	echo "#5    last year of analysis period"
	echo "Positional optional argument:"
	echo "#6    boolean to delete tmp files"
}

origdir=$1 
outdir=$2 
model_name=$3 
starty=$4
endy=$5
deltmp=$6

cd $origdir
tmpstr="analysis_cmpi_period"

for i in `seq $starty $endy`;
do
	for var in ci 2t ttr tcc cp lsp 10u 10v;
	do
		rm -f ${var}_${tmpstr}.nc
        echo "cdo cat awi3_atm_remapped_1m_${var}_1m_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}${var}_${tmpstr}.nc &"
		cdo cat awi3_atm_remapped_1m_${var}_1m_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}${var}_${tmpstr}.nc &
	done
	for var in u v z;
	do
		rm -f ${var}_${tmpstr}.nc
        echo "cat awi3_atm_remapped_6h_pl_${var}_6h_pl_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}${var}_${tmpstr}.nc &"
		cdo cat awi3_atm_remapped_6h_pl_${var}_6h_pl_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}${var}_${tmpstr}.nc &
	done
done
wait

mkdir -p $outdir
cd $outdir
for var in ci 2t ttr tcc cp lsp 10u 10v u v z;
do
    cdo remapbil,r180x91 ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc &
done
wait
cdo chname,ci,siconc ci_${tmpstr}_remap.nc siconc_${tmpstr}_tmp.nc
cdo mulc,100 siconc_${tmpstr}_tmp.nc siconc_${tmpstr}.nc

cdo chname,2t,tas 2t_${tmpstr}_remap.nc tas_${tmpstr}.nc

cdo chname,tcc,clt tcc_${tmpstr}_remap.nc clt_${tmpstr}_tmp.nc
cdo mulc,100 clt_${tmpstr}_tmp.nc clt_${tmpstr}.nc

cdo chname,lsp,pr lsp_${tmpstr}_remap.nc lsp_r_${tmpstr}_tmp.nc
cdo divc,24 lsp_r_${tmpstr}_tmp.nc lsp_r_${tmpstr}.nc
cdo chname,cp,pr cp_${tmpstr}_remap.nc cp_r_${tmpstr}_tmp.nc
cdo divc,24 cp_r_${tmpstr}_tmp.nc cp_r_${tmpstr}.nc
cdo add lsp_r_${tmpstr}.nc cp_r_${tmpstr}.nc pr_${tmpstr}.nc

cdo chname,ttr,rlut ttr_${tmpstr}_remap.nc rlut_${tmpstr}_tmp.nc
cdo divc,-21600 rlut_${tmpstr}_tmp.nc rlut_${tmpstr}.nc

cdo chname,10u,uas 10u_${tmpstr}_remap.nc uas_${tmpstr}.nc

cdo chname,10v,vas 10v_${tmpstr}_remap.nc vas_${tmpstr}.nc

cdo chname,u,ua u_${tmpstr}_remap.nc ua_l19_${tmpstr}.nc
cdo sellevel,30000 ua_l19_${tmpstr}.nc ua_${tmpstr}.nc

cdo chname,z,zg z_${tmpstr}_remap.nc zg_l19_${tmpstr}.nc
cdo sellevel,50000 zg_l19_${tmpstr}.nc zg_${tmpstr}_tmp.nc
cdo divc,9.807 zg_${tmpstr}_tmp.nc zg_${tmpstr}.nc


for var in siconc tas clt pr rlut uas vas ua zg;
do
	cdo splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_ &
done
wait
if $deltmp; then
	rm -rf ${tmpstr}
fi
