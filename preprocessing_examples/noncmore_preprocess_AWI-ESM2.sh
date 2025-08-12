#!/bin/bash

Help()
{
   # Display Help
	echo "###############################################################################"
	echo "# This is an example script preparing climate output without CMOR complient   #"
	echo "# output for the cmip-tool                                                    #"
	echo "# Author:     Jan Streffing 2022-01-18					    #"
	echo "# adapted by: Christian Stepanek                                              #"
	echo "###############################################################################"
	echo "# Positional arguments:                                                       #"
	echo "#  1  directory containing raw model output                                   #"
	echo "#  2  cmpi input subdirectory                                                 #"
	echo "#  3  name of climate model                                                   #"
	echo "# Positional optional argument:                                               #"
	echo "#  4  boolean to delete tmp files                                             #"
	echo "#  5  integer specifying first model year to process                          #"
	echo "#  6  integer specifying last model year to process                           #"
  echo "#  7  string specifying path to and name of gridfile                          #"
  echo "#  8  string specifying directory path for processed data                     #"
  echo "#  9  string specifying fesom file name suffix                                #"
  echo "# 10  string specifying echam file name suffix                                #"
	echo "###############################################################################"
}

Help
ulimit -s 10000000

#TODO:
#CS, 10th of November, 2023
#1.) test also for so and to (test simulation only provided annual mean output)
#2.) verify and fix the geopoth issue - see https://code.mpimet.mpg.de/issues/11346; currently it is not clear how geopoth should be computed 
#3.) make the script flexible regarding presence of model output with different filename formats
#4.) overhaul the script calling - currently done with a caller script ./run_noncmore_preprocess_AWI-ESM2.sh where various command line parameters are defined

#derive command line arguments
origdir=$1 
outdir=$2 
model_name=$3 
deltmp=$4
first_year=$5
last_year=$6
gridfile=$7
tmpdir=$8
fesom_filename_suffix=${9:-}
echam_filename_suffix=${10:-}

#A note regarding gridfile:
#the mesh diagnostics file may not always be suitable to perform a proper interpolation, e.g.:
#/home/a/a270064/bb1029/inputs/awicm2_final384/fesom.mesh.diag.nc does not lead a successful interpolation
#In such a case the grid description file for use with CDO can be created by means of the R library spheRlab as follows:
#module load r
#R
#grid=sl.grid.readFESOM(griddir="/home/a/a270064/bb1029/inputs/awicm2_final384/",rot=TRUE,rot.invert=TRUE,rot.abg=c(50.,15.,-90.))
#correct parameters depend on the nature of the mesh (rotated vs. unrotated) and there is no obvious way to identify them without checking a
#geographic plot of the read mesh (see next command, the plot should not be distorted)
#plot(x=grid$lon,y=grid$lat,pch=".")
#sl.grid.writeCDO(grid=grid,ofile="grid.nc",depth=TRUE)
#with the generated output file grid.nc the interpolation of FESOM2 output data can be performed


#create folders if necessary and navigate to folders
if [ ! -d ${outdir} ]
then
  mkdir -p ${outdir}
fi
if [ ! -d ${tmpdir} ]
then
  mkdir -p ${tmpdir}
fi
cd $outdir


#definition of filename string for processed model output
tmpstr="analysis_cmpi_period"


printf "##################################\n"
printf "# split off / interpolate levels #\n"
printf "##################################\n"
for i in `seq $first_year $last_year`;
do
  for var in temp salt;
  do
    cdo -setctomiss,0 ${origdir}/fesom/${var}.fesom.${i}${fesom_filename_suffix}.nc  ${tmpdir}/${var}.fesom.${i}.int2.nc &
  done
done
wait

for i in `seq $first_year $last_year`;
do
  for var in temp salt;
  do
    cdo -intlevel,10,100,1000,4000 ${tmpdir}/${var}.fesom.${i}.int2.nc ${tmpdir}/${var}.fesom.${i}.int.nc &
  done
done
wait
rm  ${tmpdir}/*.fesom.*.int2.nc

printf "#######################################\n"
printf "# cat together analysis period part 2 #\n"
printf "#######################################\n"


for i in `seq $first_year $last_year`;
do
  for var in MLD3 ssh sst;
  do
    cdo cat ${origdir}/fesom/${var}.fesom.${i}${fesom_filename_suffix}.nc ${tmpdir}/${var}_${tmpstr}.nc &
  done
  for var in temp salt;
  do
    cdo cat ${tmpdir}/${var}.fesom.${i}.int.nc ${tmpdir}/${var}_${tmpstr}.nc &
  done
  wait
done


printf "################\n"
printf "# remap FESOM2 #\n"
printf "################\n"
for var in temp salt;
do
  cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${tmpdir}/${var}_${tmpstr}.nc ${tmpdir}/weights_unstr_2_r180x91_${var}.nc &
done
wait

for var in temp salt;
do
  cdo -L -splitlevel -remap,r180x91,${tmpdir}/weights_unstr_2_r180x91_${var}.nc -setctomiss,0 -selname,${var} -setgrid,$gridfile ${tmpdir}/${var}_${tmpstr}.nc ${tmpdir}/${var}_${tmpstr}_ &
done
wait

for var in temp salt;
do
        for lvl in "000010" "000100" "001000" "004000";
        do
    mv ${tmpdir}/${var}_${tmpstr}_${lvl}.nc ${tmpdir}/${var}_${tmpstr}_${lvl}_remap.nc &
  done
done
wait


for var in MLD3;
do
  cdo genycon,r180x91 -selname,${var} -setgrid,$gridfile  ${tmpdir}/${var}_${tmpstr}.nc ${tmpdir}/weights_unstr_2_r180x91.nc
  cdo -L -remap,r180x91,${tmpdir}/weights_unstr_2_r180x91.nc -selname,${var} -setgrid,$gridfile ${tmpdir}/${var}_${tmpstr}.nc ${tmpdir}/${var}_${tmpstr}_remap.nc
done


cdo -L -splitseas -chname,ssh,zos -setmissval,0 ${tmpdir}/ssh_${tmpstr}.nc zos_${tmpstr}_ &
# Removed 'tos' reference as requested
wait
cdo genycon,r180x91 -selname,zos -setgrid,$gridfile ${outdir}/zos_${tmpstr}_DJF.nc ${tmpdir}/weights_zos_unstr_2_r180x91.nc
# Removed 'tos' reference as requested
for seas in DJF MAM JJA SON;
do
  cdo -L -remap,r180x91,${tmpdir}/weights_zos_unstr_2_r180x91.nc -timstd -selname,zos -setgrid,$gridfile zos_${tmpstr}_${seas}.nc zos_${model_name}_198912-201411_surface_${seas}.nc &
  # Removed 'tos' reference as requested
done
wait


#process ECHAM6 data
printf "##################\n"
printf "# process ECHAM6 #\n"
printf "##################\n"
for var in seaice temp2 trad0 aclcov aprc aprl u10 v10;
do
        filelist=""
        if [ -f ${tmpdir}/${var}_${tmpstr}.nc ]
        then
		rm -f ${tmpdir}/${var}_${tmpstr}.nc
        fi
        for i in `seq $first_year $last_year`
        do 
          cdo -t echam6 -f nc select,name=$var ${origdir}/echam/*_${i}??.01_echam ${tmpdir}/${var}_${i}_${tmpstr}.nc &
          filelist="${filelist} ${tmpdir}/${var}_${i}_${tmpstr}.nc"
        done
        wait
        cdo mergetime ${filelist} ${tmpdir}/${var}_${tmpstr}.nc
	#cdo -t echam6 -f nc select,name=$var,year=${first_year}/${last_year} ${origdir}/echam/*_??????.01_echam ${tmpdir}/${var}_${tmpstr}.nc &
done
wait

#derive atmospheric variables with cdo after
printf "#################################################\n"
printf "# deriving missing model output using cdo after #\n"
printf "#################################################\n"
filelist=""
for i in `seq $first_year $last_year`
do 
  cdo -f nc select,code=129,130,133,138,152,155 ${origdir}/echam/*${i}??.01_echam ${tmpdir}/data_for_afterburner_${i}.nc &
  filelist="${filelist} ${tmpdir}/data_for_afterburner_${i}.nc"
done
wait
cdo mergetime ${filelist} ${tmpdir}/data_for_afterburner.nc
cdo vardes ${tmpdir}/data_for_afterburner.nc
for var in u v z
do
        if [ -f ${tmpdir}/${var}_${tmpstr}.nc ]
        then
		rm -f ${tmpdir}/${var}_${tmpstr}.nc
        fi
        if [ ${var} == "u" ]
        then
           cdo -f nc -t echam6 after ${tmpdir}/data_for_afterburner.nc ${tmpdir}/${var}_${tmpstr}.nc <<EON &
TYPE=20 CODE=131
EON
        fi
        if [ ${var} == "v" ]
        then
           cdo -f nc -t echam6 after ${tmpdir}/data_for_afterburner.nc ${tmpdir}/${var}_${tmpstr}.nc <<EON &
TYPE=20 CODE=132
EON
        fi
        if [ ${var} == "z" ]
        then
           cdo -f nc -t echam6 after ${tmpdir}/data_for_afterburner.nc ${tmpdir}/${var}_${tmpstr}.nc <<EON &
TYPE=30 CODE=156
EON
        fi
done
wait
cdo -f nc -t echam6 sp2gp -select,code=130 ${tmpdir}/data_for_afterburner.nc ${tmpdir}/t_${tmpstr}.nc
rm ${tmpdir}/data_for_afterburner.nc


#interpolate vertical data from model to pressure levels
printf "#################################################\n"
printf "# vertical interpolation to pressure levels     #\n"
printf "#################################################\n"
filelist=""
for i in `seq $first_year $last_year`
do 
  cdo -f nc -t echam6 select,name=aps ${origdir}/echam/*_${i}??.01_echam ${tmpdir}/aps_${i}_${tmpstr}.nc
  filelist="${filelist} ${tmpdir}/aps_${i}_${tmpstr}.nc"
done
wait
cdo mergetime ${filelist} ${tmpdir}/aps_${tmpstr}.nc

for var in u v z
do
        if [ -f ${tmpdir}/${var}_${tmpstr}_data_for_pressure_level_interpolation.nc ]
        then
		rm -f ${tmpdir}/${var}_${tmpstr}_data_for_pressure_level_interpolation.nc
        fi
        cdo merge ${tmpdir}/aps_${tmpstr}.nc ${tmpdir}/t_${tmpstr}.nc ${tmpdir}/${var}_${tmpstr}.nc ${tmpdir}/${var}_${tmpstr}_data_for_pressure_level_interpolation.nc
        cdo delvar,aps,t -ml2pl,100000,92500,85000,70000,50000,30000,20000,10000,5000,3000,2000,1000, ${tmpdir}/${var}_${tmpstr}_data_for_pressure_level_interpolation.nc ${tmpdir}/${var}_${tmpstr}_pressure_levels.nc&
done
wait
rm ${tmpdir}/{aps,t}_${tmpstr}.nc ${tmpdir}/{u,v,z}_${tmpstr}_data_for_pressure_level_interpolation.nc


#remap echam data to common grid
printf "#################\n"
printf "# remap ECHAM6 #\n"
printf "#################\n"
for var in seaice temp2 trad0 aclcov aprc aprl u10 v10;
do
	cdo remapbil,r180x91 ${tmpdir}/${var}_${tmpstr}.nc ${tmpdir}/${var}_${tmpstr}_remap.nc &
done
wait
for var in u v z;
do
	cdo remapbil,r180x91 ${tmpdir}/${var}_${tmpstr}_pressure_levels.nc ${tmpdir}/${var}_${tmpstr}_remap.nc &
done
wait


#perform various data processing steps, including "CMORizing" variable names
printf "#################\n"
printf "# tyding data   #\n"
printf "#################\n"
cdo mulc,100 -chname,seaice,siconc ${tmpdir}/seaice_${tmpstr}_remap.nc ${tmpdir}/siconc_${tmpstr}.nc
cdo chname,temp2,tas ${tmpdir}/temp2_${tmpstr}_remap.nc ${tmpdir}/tas_${tmpstr}.nc
cdo -f nc mulc,100 -chname,aclcov,clt ${tmpdir}/aclcov_${tmpstr}_remap.nc ${tmpdir}/clt_${tmpstr}.nc
cdo -f nc -chname,aprl,pr ${tmpdir}/aprl_${tmpstr}_remap.nc ${tmpdir}/aprl_r_${tmpstr}.nc
cdo -f nc -chname,aprc,pr ${tmpdir}/aprc_${tmpstr}_remap.nc ${tmpdir}/aprc_r_${tmpstr}.nc
cdo add ${tmpdir}/aprl_r_${tmpstr}.nc ${tmpdir}/aprc_r_${tmpstr}.nc ${tmpdir}/pr_${tmpstr}.nc
cdo -f nc divc,-1 -chname,trad0,rlut ${tmpdir}/trad0_${tmpstr}_remap.nc ${tmpdir}/rlut_${tmpstr}.nc
cdo -f nc chname,u10,uas ${tmpdir}/u10_${tmpstr}_remap.nc ${tmpdir}/uas_${tmpstr}.nc
cdo -f nc chname,v10,vas ${tmpdir}/v10_${tmpstr}_remap.nc ${tmpdir}/vas_${tmpstr}.nc
cdo -f nc chname,u,ua ${tmpdir}/u_${tmpstr}_remap.nc ${tmpdir}/ua_l19_${tmpstr}.nc
cdo sellevel,30000 ${tmpdir}/ua_l19_${tmpstr}.nc ${tmpdir}/ua_${tmpstr}.nc
cdo chname,geopoth,zg ${tmpdir}/z_${tmpstr}_remap.nc ${tmpdir}/zg_l19_${tmpstr}.nc
cdo sellevel,50000 ${tmpdir}/zg_l19_${tmpstr}.nc ${tmpdir}/zg_${tmpstr}.nc
cdo chname,MLD3,mlotst ${tmpdir}/MLD3_${tmpstr}_remap.nc  ${tmpdir}/mlotst_${tmpstr}.nc.tmp
cdo -divc,-1 ${tmpdir}/mlotst_${tmpstr}.nc.tmp  ${tmpdir}/mlotst_${tmpstr}.nc
rm ${tmpdir}/mlotst_${tmpstr}.nc.tmp
wait

for var in siconc tas clt pr rlut uas vas mlotst;
do
	cdo splitseas -yseasmean ${tmpdir}/${var}_${tmpstr}.nc $outdir/${var}_${model_name}_${first_year}12-${last_year}11_surface_ &
	for seas in MAM JJA SON DJF
	do
	        ln -sf $outdir/${var}_${model_name}_${first_year}12-${last_year}11_surface_${seas}.nc $outdir/${var}_${model_name}_198912-201411_surface_${seas}.nc
	done
done
cdo -L splitseas -yseasmean ${tmpdir}/ua_${tmpstr}.nc $outdir/ua_${model_name}_${first_year}12-${last_year}11_300hPa_ &
cdo -L splitseas -yseasmean ${tmpdir}/zg_${tmpstr}.nc $outdir/zg_${model_name}_${first_year}12-${last_year}11_500hPa_ &
wait
for seas in MAM JJA SON DJF
do
        ln -sf $outdir/ua_${model_name}_${first_year}12-${last_year}11_300hPa_${seas}.nc $outdir/ua_${model_name}_198912-201411_300hPa_${seas}.nc
        ln -sf $outdir/zg_${model_name}_${first_year}12-${last_year}11_500hPa_${seas}.nc $outdir/zg_${model_name}_198912-201411_500hPa_${seas}.nc 
done
wait

for lvl in "000010" "000100" "001000" "004000";
do
	cdo chname,salt,so ${tmpdir}/salt_${tmpstr}_${lvl}_remap.nc ${tmpdir}/so_${tmpstr}_${lvl}.nc &
	cdo chname,temp,thetao ${tmpdir}/temp_${tmpstr}_${lvl}_remap.nc ${tmpdir}/thetao_${tmpstr}_${lvl}.nc &
done
wait

for var in thetao so
do
	for lvl in 10 100 1000 4000;
	do
		cdo -L -splitseas -setctomiss,0 -yseasmean ${tmpdir}/${var}_${tmpstr}_$(printf "%06d" $lvl).nc $outdir/${var}_${model_name}_${first_year}12-${last_year}11_${lvl}m_
		for seas in MAM JJA SON DJF
		do
		        ln -sf $outdir/${var}_${model_name}_${first_year}12-${last_year}11_${lvl}m_${seas}.nc $outdir/${var}_${model_name}_198912-201411_${lvl}m_${seas}.nc
		done
	done
done
wait


#clean up temporary directory
if [ "$deltmp" == "1" ]; then
	rm -rf ${tmpstr}
fi
