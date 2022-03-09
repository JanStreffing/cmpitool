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


##########################
# read command line args #
##########################
origdir=$1 
outdir=$2 
model_name=$3 
starty=$4
endy=$5
gridfile=$6
deltmp=$7

cd $origdir
tmpstr="analysis_cmpi_period"


##############################################
# clean up so cat does not do strange things #
##############################################
for var in ci 2t ttr tcc cp lsp 10u 10v u z temp salt;
do
    rm -f ${outdir}/${var}_${tmpstr}*
done


################################
# cat together analysis period #
################################
for i in `seq $starty $endy`;
do
	for var in temp salt;
	do
		cdo -intlevel,10,100,1000,4000 fesom/${var}.fesom.${i}.nc fesom/${var}.fesom.${i}.int.nc
		cdo cat fesom/${var}.fesom.${i}.int.nc ${outdir}/${var}_${tmpstr}.nc
	done
	for var in ci 2t ttr tcc cp lsp 10u 10v;
	do
		cdo cat oifs/atm_remapped_1m_${var}_1m_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}/${var}_${tmpstr}.nc &
	done
	var='u'
	cdo sellevel,30000 oifs/atm_remapped_6h_pl_${var}_6h_pl_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}/${var}_${tmpstr}_lvl.nc &
	var='z'
	cdo sellevel,50000 oifs/atm_remapped_6h_pl_${var}_6h_pl_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}/${var}_${tmpstr}_lvl.nc &
    	wait
	cdo cat ${outdir}/${var}_${tmpstr}_lvl.nc ${outdir}/${var}_${tmpstr}.nc &
	var='u'
	cdo cat ${outdir}/${var}_${tmpstr}_lvl.nc ${outdir}/${var}_${tmpstr}.nc &
    	wait
done

mkdir -p $outdir
cd $outdir


################
# remap FESOM2 #
################
for var in temp salt;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${outdir}/${var}_${tmpstr}.nc ${outdir}/weights_unstr_2_r180x91.nc
	cdo -L -splitlevel -remap,r180x91,weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_
        for lvl in "000010" "000100" "001000" "004000";
        do
		mv ${var}_${tmpstr}_${lvl}.nc ${var}_${tmpstr}_${lvl}_remap.nc
	done
done


#################
# remap OpenIFS #
#################
for var in ci 2t ttr tcc cp lsp 10u 10v u z;
do
    cdo remapbil,r180x91 ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc &
done
wait


########################################
# quasi CMORize data so it matches obs #
########################################
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

cdo chname,u,ua u_${tmpstr}_remap.nc  ua_${tmpstr}.nc

cdo chname,z,zg z_${tmpstr}_remap.nc zg_${tmpstr}_tmp.nc
cdo divc,9.807 zg_${tmpstr}_tmp.nc zg_${tmpstr}.nc

for var in siconc tas clt pr rlut uas vas ua zg;
do
	cdo -L splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_ &
done
wait


for lvl in "000010" "000100" "001000" "004000";
do
	cdo chname,salt,so salt_${tmpstr}_${lvl}_remap.nc so_${tmpstr}_${lvl}.nc &
	cdo chname,temp,thetao temp_${tmpstr}_${lvl}_remap.nc thetao_${tmpstr}_${lvl}.nc &
done
wait
for var in thetao so
do
	for lvl in "000010" "000100" "001000" "004000";
	do
		cdo -L splitseas -yseasmean ${var}_${tmpstr}_${lvl}.nc $outdir/${var}_${lvl}_${model_name}_198912-201411_
	done
done


if $deltmp; then
	rm -rf ${tmpstr}
fi
