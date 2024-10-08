workfolder=${1:-/work/ab0246/a270092/postprocessing/cmip6_cmpitool/}
model=${2:-CESM2}

seasonarray=('MAM' 'JJA' 'SON' 'DJF')
vararray=("siconc" "clt" "rlut" "tas" "zg" "ua" "pr" "uas" "vas" "so" "thetao" "mlotst" "tos" "zos")
deptharray=("surface" "10m" "100m" "1000m" "4000m" "300hPa" "500hPa")

echo "=============================="
for var in ${vararray[*]}; do
    echo "==============="
    echo "Working on $var"
    echo "==============="
    for depth in ${deptharray[*]}; do
        cdo ensmean $workfolder/${var}_${model}_198912-201411_${depth}_MAM.nc $workfolder/${var}_${model}_198912-201411_${depth}_JJA.nc $workfolder/${var}_${model}_198912-201411_${depth}_SON.nc $workfolder/${var}_${model}_198912-201411_${depth}_DJF.nc $workfolder/${var}_${model}_198912-201411_${depth}_year.nc &
    done
done
wait
