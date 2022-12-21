workfolder="/work/ab0246/a270092/postprocessing/cmip6_cmpitool/"
base="/pool/data/CMIP6/data/CMIP/CSIRO-ARCCSS/ACCESS-CM2/historical/r1i1p1f1/"
model="ACCESS-CM2"
cleanup=true
seasons=('MAM' 'JJA' 'SON' 'DJF')

mkdir -p $workfolder/$model

vararray=("zos")
#vararray=("siconc" "clt" "tas" "zg" "ua" "pr" "uas" "vas" "so" "thetao" "mlotst" "tos" "zos")

for var in ${vararray[*]}; do
    echo "==============="
    echo "Working on $var"
    echo "==============="

    # Manually select domain
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
    elif [[ "$var" = "tos" ]] || [[ "$var" = "zos" ]] || [[ "$var" = "mlotst" ]] || [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]]; then
        group="Omon"
    else
        group="Amon"
    fi

    # Smart select grid
    cd ${base}/${group}/${var}/
    grids="g*"
    folders=( $grids )
    cd "${folders[0]}"
    echo "switching to folder:",
    pwd

    # Smart select version
    versions="v*"
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
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]] ; then
        cdo -splitlevel -remapbil,r180x91 -intlevel,10,100,1000,4000 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
    elif [[ "$var" = "zos" ]] || [[ "$var" = "tos" ]]; then
        cdo -splitseas -seltimestep,$steps $var ${var}_${model}_198912-201411_sel_ &
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
        levels=('000010' '000100' '001000' '004000')
        for i in "${levels[@]}"; do
            cdo splitseas -yseasmean ${var}_${model}_198912-201411_${i}.nc ${var}_${model}_198912-201411_${i}_ &
        done
    elif [[ "$var" = "zos" ]] || [[ "$var" = "tos" ]]; then
        for seas in  ${seasons[*]}; do
            cdo -remapbil,r180x91 -timstd ${var}_${model}_198912-201411_sel_${seas}.nc ${var}_${model}_198912-201411_${seas} &
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
            mv ${var}_${model}_198912-201411_000010_$s.nc ${var}_${model}_198912-201411_10m_$s.nc &
            mv ${var}_${model}_198912-201411_000100_$s.nc ${var}_${model}_198912-201411_100m_$s.nc &
            mv ${var}_${model}_198912-201411_001000_$s.nc ${var}_${model}_198912-201411_1000m_$s.nc &
            mv ${var}_${model}_198912-201411_004000_$s.nc ${var}_${model}_198912-201411_4000m_$s.nc &
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
        find . -type l -exec unlink {} \;
    done
    wait
fi

echo "==============="
echo "$model finished"
echo "==============="
