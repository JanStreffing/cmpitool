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
	echo "#8    Scale fluxes by accumulation period in seconds (needed for pre v3.2)"
	echo "#################################################"
	echo "# example: ./preprocess_AWI-CM3-XIOS.sh /work/ab0246/a270092/runtime/awicm3-v3.2/HIST6/outdata/ /work/ab0995/a270251/software/cmpitool/input 3.2.GAUSSHIST 1989 2014 /work/ab0995/a270251/data/meshes/core2/core2_griddes_nodes.nc true 21600"
}

# Check if the script was called with the help option
if [[ $1 == "--help" ]]; then
  Help
  exit 0  # Exit successfully after displaying help
fi


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
fluxscale="${8:-1}"

cd $origdir
tmpstr="analysis_cmpi_period"
tmpdir=$outdir/tmp
rm -rf $tmpdir
mkdir -p $tmpdir

printf "##############################################\n"
printf "# clean up so cat does not do strange things #\n"
printf "##############################################\n"
for var in ci 2t ttr tcc cp lsp 10u 10v u z temp salt MLD3 ssh sst;
do
    rm -f ${outdir}/${var}_${tmpstr}* 
done
wait


printf "##################################\n"
printf "# split off / interpolate levels #\n"
printf "##################################\n"
for i in `seq $starty $endy`;
do
	for var in temp salt;
	do
		cdo -intlevel,10,100,1000,4000 -setctomiss,0 fesom/${var}.fesom.${i}.nc $tmpdir/${var}.fesom.${i}.int.nc &
	done
	var='u'
	cdo sellevel,30000 oifs/atm_remapped_6h_pl_${var}_6h_pl_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}/${var}_$(printf "%04d" $i)_${tmpstr}_lvl.nc &
	var='z'
	cdo sellevel,50000 oifs/atm_remapped_6h_pl_${var}_6h_pl_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}/${var}_$(printf "%04d" $i)_${tmpstr}_lvl.nc &
done
wait

printf "#######################################\n"
printf "# cat together analysis period part 2 #\n"
printf "#######################################\n"


for i in `seq $starty $endy`;
do
	for var in MLD3 ssh sst;
	do
		cdo cat fesom/${var}.fesom.${i}.nc ${outdir}/${var}_${tmpstr}.nc &
	done
	for var in ci 2t ttr tcc cp lsp 10u 10v;
	do
		cdo cat oifs/atm_remapped_1m_${var}_1m_$(printf "%04d" $i)-$(printf "%04d" $i).nc ${outdir}/${var}_${tmpstr}.nc &
	done
	for var in temp salt;
	do
		cdo cat $tmpdir/${var}.fesom.${i}.int.nc ${outdir}/${var}_${tmpstr}.nc &
	done
	var='z'
	cdo cat ${outdir}/${var}_$(printf "%04d" $i)_${tmpstr}_lvl.nc ${outdir}/${var}_${tmpstr}.nc &
	var='u'
	cdo cat ${outdir}/${var}_$(printf "%04d" $i)_${tmpstr}_lvl.nc ${outdir}/${var}_${tmpstr}.nc &
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


for var in MLD3;
do
	cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${outdir}/${var}_${tmpstr}.nc ${outdir}/weights_unstr_2_r180x91.nc
	cdo -L -remap,r180x91,weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc
done


cdo -L -splitseas -chname,ssh,zos -setmissval,0 ssh_${tmpstr}.nc zos_${tmpstr}_ &
# Removed 'tos' reference as requested
wait
cdo genycon,r180x91 -selname,zos -setgrid,$gridfile ${outdir}/zos_${tmpstr}_DJF.nc ${outdir}/weights_zos_unstr_2_r180x91.nc
# Removed 'tos' reference as requested
for seas in DJF MAM JJA SON;
do
	cdo -L -remap,r180x91,weights_zos_unstr_2_r180x91.nc -timstd -selname,zos -setgrid,$gridfile zos_${tmpstr}_${seas}.nc zos_${model_name}_198912-201411_surface_${seas}.nc &
	# Removed 'tos' reference as requested
done
wait

printf "#################\n"
printf "# remap OpenIFS #\n"
printf "#################\n"
for var in ci 2t ttr tcc cp lsp 10u 10v u z;
do
    cdo remapbil,r180x91 ${var}_${tmpstr}.nc ${var}_${tmpstr}_remap.nc &
done
wait


printf "########################################\n"
printf "# quasi CMORize data so it matches obs #\n"
printf "########################################\n"
cdo chname,ci,siconc ci_${tmpstr}_remap.nc siconc_${tmpstr}_tmp.nc
cdo mulc,100 siconc_${tmpstr}_tmp.nc siconc_${tmpstr}.nc &

cdo chname,2t,tas 2t_${tmpstr}_remap.nc tas_${tmpstr}.nc &

cdo chname,tcc,clt tcc_${tmpstr}_remap.nc clt_${tmpstr}_tmp.nc
cdo mulc,100 clt_${tmpstr}_tmp.nc clt_${tmpstr}.nc &

cdo chname,lsp,pr lsp_${tmpstr}_remap.nc lsp_r_${tmpstr}_tmp.nc
cdo divc,$(bc -l <<< $fluxscale/900) lsp_r_${tmpstr}_tmp.nc lsp_r_${tmpstr}.nc
cdo chname,cp,pr cp_${tmpstr}_remap.nc cp_r_${tmpstr}_tmp.nc
cdo divc,$(bc -l <<< $fluxscale/900) cp_r_${tmpstr}_tmp.nc cp_r_${tmpstr}.nc
cdo add lsp_r_${tmpstr}.nc cp_r_${tmpstr}.nc pr_${tmpstr}.nc &
cdo chname,ttr,rlut ttr_${tmpstr}_remap.nc rlut_${tmpstr}_tmp.nc
cdo divc,$(bc -l <<< $fluxscale*-1) rlut_${tmpstr}_tmp.nc rlut_${tmpstr}.nc &
cdo chname,10u,uas 10u_${tmpstr}_remap.nc uas_${tmpstr}.nc & 

cdo chname,10v,vas 10v_${tmpstr}_remap.nc vas_${tmpstr}.nc &

cdo chname,u,ua u_${tmpstr}_remap.nc  ua_${tmpstr}.nc &

cdo chname,z,zg z_${tmpstr}_remap.nc zg_${tmpstr}_tmp.nc
cdo divc,9.807 zg_${tmpstr}_tmp.nc zg_${tmpstr}.nc &

cdo chname,MLD3,mlotst -divc,-1 MLD3_${tmpstr}_remap.nc  mlotst_${tmpstr}.nc &
wait


for var in siconc tas clt pr rlut uas vas mlotst;
do
	cdo -L splitseas -yseasmean ${var}_${tmpstr}.nc $outdir/${var}_${model_name}_198912-201411_surface_ &
done
cdo -L splitseas -yseasmean ua_${tmpstr}.nc $outdir/ua_${model_name}_198912-201411_300hPa_ &
cdo -L splitseas -yseasmean zg_${tmpstr}.nc $outdir/zg_${model_name}_198912-201411_500hPa_ &


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
	rm -rf *${tmpstr}* $tmpdir
fi
