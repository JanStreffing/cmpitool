workfolder=${1:-/work/ab0246/a270092/postprocessing/cmip6_cmpitool/}
base=${2:-/pool/data/CMIP6/data/CMIP/NCAR/CESM2/historical/r1i1p1f1/}
model=${3:-CESM2}
cleanup=${4:-true}
unit_level_oce=${5:-m}


mkdir -p $workfolder/$model

seasons=('MAM' 'JJA' 'SON' 'DJF')
vararray=("siconc" "clt" "rlut" "tas" "zg" "ua" "pr" "uas" "vas" "so" "thetao" "mlotst" "zos")

echo "=============================="
for var in ${vararray[*]}; do
    echo "==============="
    echo "Working on $var"
    echo "==============="

    # Manually select domain
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
    elif [[ "$var" = "zos" ]] || [[ "$var" = "mlotst" ]] || [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]]; then
        group="Omon"
    else
        group="Amon"
    fi

    # Smart select grid
    if [ -d "${base}/${group}/${var}/" ]; then
        cd ${base}/${group}/${var}/
    else
        echo "$var does not exist for $model, skipping variable!"
        continue
    fi
    grids="g*"
    folders=( $grids )
    cd "${folders[0]}"
    echo "switching to folder:",
    pwd

    # Smart select latest version
    versions=$(ls -d -v v* | sort -r)
    folders=( $versions )
    cd "${folders[0]}"
    echo "storing file to folder:",
    pwd
    filedir=$(pwd)

    echo "switching to workfolder:",
    cd $workfolder/$model

    echo "Link in files and merge them"
    ln -sf $filedir/* .
    rm -rf $var
    cdo mergetime ${var}_${group}_* $var &
done
wait


# Remapping in horrizontal and if needed in the vertical
steps="1680/1979"
for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo -remapbil,r180x91 -sellevel,50000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "ua" ]]; then
        cdo -remapbil,r180x91 -sellevel,30000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "thetao" ]]; then
        if [[ "$unit_level_oce" = "cm" ]]; then
            cdo -splitlevel -remapbil,r180x91 -intlevel,1000,10000,100000,400000 -expr,'thetao = ((thetao < 1000)) ? thetao : (1e20)' -setmissval,1e20  -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
        else
            cdo -splitlevel -remapbil,r180x91 -intlevel,10,100,1000,4000 -expr,'thetao = ((thetao < 1000)) ? thetao : (1e20)' -setmissval,1e20 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
        fi
    elif [[ "$var" = "so" ]] ; then
        if [[ "$unit_level_oce" = "cm" ]]; then
            cdo -splitlevel -remapbil,r180x91 -intlevel,1000,10000,100000,400000 -expr,'so = ((so < 1000)) ? so : (1e20)' -setmissval,1e20 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
        else
            cdo -splitlevel -remapbil,r180x91 -intlevel,10,100,1000,4000 -expr,'so = ((so < 1000)) ? so : (1e20)' -setmissval,1e20 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
        fi
    elif [[ "$var" = "zos" ]]; then
        cdo -splitseas -seltimestep,$steps $var ${var}_${model}_198912-201411_sel_ &
    elif [[ "$var" = "siconc" ]] || [[ "$var" = "clt" ]]; then
        max=$(cdo -s outputkey,value -timmean $var | awk '$1 != "nan" && $1 > max { max = $1 } END { print max }')
        echo "Maxval is: $max"
        if (( $(echo "$max <= 1" |bc -l) )); then
            echo "Maximum of $var is: $max, multiplying by 100"
            cdo -remapbil,r180x91 -mulc,100 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        else
            cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        fi
    elif [[ "$var" = "uas" ]]; then
        mean=`cdo -s outputkey,value -fldmean -sellonlatbox,-45,-15,53,42 -timmean $var | tail -1 | bc`
        if (( $(echo "$mean < 0" |bc -l) )); then
            echo "Mean of $var is: $mean, multiplying by -1"
            cdo -remapbil,r180x91 -mulc,-1 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        else
            cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        fi
    elif [[ "$var" = "vas" ]]; then
        mean=`cdo -s outputkey,value -fldmean -sellonlatbox,-25,-15,30,20 -timmean $var | tail -1 | bc`
        if (( $(echo "$mean > 0" |bc -l) )); then
            echo "Mean of $var is: $mean, multiplying by -1"
            cdo -remapbil,r180x91 -mulc,-1 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        else
            cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        fi
    elif [[ "$var" = "pr" ]]; then
        mean=`cdo -s outputkey,value -fldmean -timmean $var | tail -1 | cut -c 12- | bc`
        if (( $(echo "$mean > 6" |bc -l) )); then
            echo "exponent of $var is: $mean, multiplying by 1000"
            cdo -remapbil,r180x91 -mulc,1000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        else
            cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
        fi
    else
        cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    fi
done
wait


# Make seasonal yseasmeans and split 
for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo splitseas -yseasmean ${var}_${model}_198912-201411.nc ${var}_${model}_198912-201411_500hPa_ &
    elif [[ "$var" = "ua" ]]; then
        cdo splitseas -yseasmean ${var}_${model}_198912-201411.nc ${var}_${model}_198912-201411_300hPa_ &
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]] ; then
        if [[ "$unit_level_oce" = "cm" ]]; then
            levels=('001000' '010000' '100000' '400000')
        else
            levels=('000010' '000100' '001000' '004000')
        fi
        for i in "${levels[@]}"; do
            cdo splitseas -yseasmean ${var}_${model}_198912-201411_${i}.nc ${var}_${model}_198912-201411_${i}_ &
        done
    elif [[ "$var" = "zos" ]]; then
        for seas in  ${seasons[*]}; do
            cdo -remapbil,r180x91 -timstd ${var}_${model}_198912-201411_sel_${seas}.nc ${var}_${model}_198912-201411_surface_${seas}.nc &
        done
    else
        cdo splitseas -yseasmean ${var}_${model}_198912-201411.nc ${var}_${model}_198912-201411_surface_ &
    fi
done
wait


# Fix names
for var in ${vararray[*]}; do
    if [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]] ; then
        for s in "${seasons[@]}"; do
            mv ${var}_${model}_198912-201411_${levels[0]}_$s.nc ${var}_${model}_198912-201411_10m_$s.nc &
            mv ${var}_${model}_198912-201411_${levels[1]}_$s.nc ${var}_${model}_198912-201411_100m_$s.nc &
            mv ${var}_${model}_198912-201411_${levels[2]}_$s.nc ${var}_${model}_198912-201411_1000m_$s.nc &
            mv ${var}_${model}_198912-201411_${levels[3]}_$s.nc ${var}_${model}_198912-201411_4000m_$s.nc &
        done
    fi
done
wait

if $cleanup; then
    # Cleanup
    for var in ${vararray[*]}; do
        rm -f ${var}_${model}_198912-201411_sel_*.nc
        rm -f ${var}_${model}_198912-201411_??????.nc
        rm -f ${var}_${model}_198912-201411.nc
        rm -f ${var}
        mv ${var}_${model}_198912-201411_* ..
    done
    cd $workfolder
    rm -rf $model
    wait
fi

echo "==============="
echo "$model finished"
echo "=============================="

