base="/pool/data/CMIP6/data/CMIP/NCAR/CESM2/historical/r1i1p1f1/"
model="CESM2"

vararray=("siconc" "tas" "clt" "ua" "zg" "rlut" "uas" "vas")
mode="onefile" #onefile, yearly, decadal, five, four

for var in ${vararray[*]}; do
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
        g="gn"
        version="v20190308"
    else
        group="Amon"
        g="gn"
        version="v20190308"
    fi
    if [[ "$mode" = "yearly" ]]; then
        ln -s $base/$group/$var/$g/$version/*_198* .
        ln -s $base/$group/$var/$g/$version/*_199* .
        ln -s $base/$group/$var/$g/$version/*_20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "onefile" ]]; then
        ln -s $base/$group/$var/$g/$version/*1850* $var
    fi
    if [[ "$mode" = "two" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* $var
    fi
    if [[ "$mode" = "five" ]]; then
        ln -s $base/$group/$var/$g/$version/*1970* .
        ln -s $base/$group/$var/$g/$version/*20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "four" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* .
        ln -s $base/$group/$var/$g/$version/*20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "three" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* .
        ln -s $base/$group/$var/$g/$version/*1970* .
        ln -s $base/$group/$var/$g/$version/*1990* .
        ln -s $base/$group/$var/$g/$version/*201* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
done
wait

if [[ "$mode" = "onefile" ]]; then
    steps="1680/1979"
elif [[ "$mode" = "five" ]]; then
    steps="240/539"
elif [[ "$mode" = "four" ]]; then
    steps="480/779"
elif [[ "$mode" = "two" ]]; then
    steps="480/779"
elif [[ "$mode" = "three" ]]; then
    steps="480/779"
else
    steps="120/419"
fi
for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo -remapbil,r180x91 -sellevel,50000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "ua" ]]; then
        cdo -remapbil,r180x91 -sellevel,30000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    else
        cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    fi
done
wait


for var in ${vararray[*]}; do
        cdo splitseas -yseasmean ${var}_${model}_198912-201411.nc ${var}_${model}_198912-201411_
done





vararray=("pr")
mode="onefile" #onefile, yearly, decadal, five, four

for var in ${vararray[*]}; do
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
        g="gn"
        version="v20200420"
    else
        group="Amon"
        g="gn"
        version="v20190401"
    fi
    if [[ "$mode" = "yearly" ]]; then
        ln -s $base/$group/$var/$g/$version/*_198* .
        ln -s $base/$group/$var/$g/$version/*_199* .
        ln -s $base/$group/$var/$g/$version/*_20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "onefile" ]]; then
        ln -s $base/$group/$var/$g/$version/*1850* $var
    fi
    if [[ "$mode" = "two" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* $var
    fi
    if [[ "$mode" = "five" ]]; then
        ln -s $base/$group/$var/$g/$version/*1970* .
        ln -s $base/$group/$var/$g/$version/*20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "four" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* $var
    fi
    if [[ "$mode" = "three" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* .
        ln -s $base/$group/$var/$g/$version/*1970* .
        ln -s $base/$group/$var/$g/$version/*1990* .
        ln -s $base/$group/$var/$g/$version/*201* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
done
wait

if [[ "$mode" = "onefile" ]]; then
    steps="1680/1979"
elif [[ "$mode" = "five" ]]; then
    steps="240/539"
elif [[ "$mode" = "four" ]]; then
    steps="480/779"
elif [[ "$mode" = "two" ]]; then
    steps="480/779"
elif [[ "$mode" = "three" ]]; then
    steps="480/779"
else
    steps="120/419"
fi

for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo -remapbil,r180x91 -sellevel,50000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "ua" ]]; then
        cdo -remapbil,r180x91 -sellevel,30000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    else
        cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    fi
done
wait

for var in ${vararray[*]}; do
        cdo splitseas -yseasmean ${var}_${model}_198912-201411.nc ${var}_${model}_198912-201411_
done






vararray=("thetao" "so")
mode="onefile" #onefile, yearly, decadal, five, four

for var in ${vararray[*]}; do
    if [[ "$var" = "saiconc" ]]; then
        group="SImon"
        g="gn"
        version="v20190308"
    else
        group="Omon"
        g="gn"
        version="v20190308"
    fi
    if [[ "$mode" = "yearly" ]]; then
        ln -s $base/$group/$var/$g/$version/*_198* .
        ln -s $base/$group/$var/$g/$version/*_199* .
        ln -s $base/$group/$var/$g/$version/*_20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "onefile" ]]; then
        ln -s $base/$group/$var/$g/$version/*1850* $var
    fi
    if [[ "$mode" = "two" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* $var
    fi
    if [[ "$mode" = "five" ]]; then
        ln -s $base/$group/$var/$g/$version/*1970* .
        ln -s $base/$group/$var/$g/$version/*20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "four" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* .
        ln -s $base/$group/$var/$g/$version/*20* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
    if [[ "$mode" = "three" ]]; then
        ln -s $base/$group/$var/$g/$version/*1950* .
        ln -s $base/$group/$var/$g/$version/*1970* .
        ln -s $base/$group/$var/$g/$version/*1990* .
        ln -s $base/$group/$var/$g/$version/*201* .
        rm -rf $var
        cdo mergetime ${var}_${group}_* $var &
    fi
done
wait


if [[ "$mode" = "onefile" ]]; then
    steps="1680/1979"
elif [[ "$mode" = "five" ]]; then
    steps="240/539"
elif [[ "$mode" = "four" ]]; then
    steps="480/779"
elif [[ "$mode" = "two" ]]; then
    steps="480/779"
elif [[ "$mode" = "three" ]]; then
    steps="480/779"
else
    steps="120/419"
fi


for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo -remapbil,r180x91 -sellevel,50000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "ua" ]]; then
        cdo -remapbil,r180x91 -sellevel,30000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]] ; then
        cdo -splitlevel -remapbil,r180x91 -intlevel,1000,10000,100000,400000 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
    else
        cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    fi
done
wait


for var in ${vararray[*]}; do
    levels=('001000' '010000' '100000' '400000')
    for i in "${levels[@]}"; do
        cdo splitseas -yseasmean ${var}_${model}_198912-201411_${i}.nc ${var}_${model}_198912-201411_${i}_ &
    done
done
wait


seasons=('MAM' 'JJA' 'SON' 'DJF')
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_001000_$s.nc ${var}_${model}_198912-201411_10m_$s.nc &
        mv ${var}_${model}_198912-201411_010000_$s.nc ${var}_${model}_198912-201411_100m_$s.nc &
        mv ${var}_${model}_198912-201411_100000_$s.nc ${var}_${model}_198912-201411_1000m_$s.nc &
        mv ${var}_${model}_198912-201411_400000_$s.nc ${var}_${model}_198912-201411_4000m_$s.nc &
    done
done
wait


vararray=("siconc" "tas" "tos" "zos" "clt" "rlut" "pr" "uas" "vas")
seasons=('MAM' 'JJA' 'SON' 'DJF')
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_$s.nc ${var}_${model}_198912-201411_surface_$s.nc &
    done
done

vararray=("zg")
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_$s.nc ${var}_${model}_198912-201411_500hPa_$s.nc &
    done
done


vararray=("ua")
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_$s.nc ${var}_${model}_198912-201411_300hPa_$s.nc &
    done
done

vararray=("so" "thetao")
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_001000_$s.nc ${var}_${model_new}_198912-201411_10m_$s.nc &
        mv ${var}_${model}_198912-201411_010000_$s.nc ${var}_${model_new}_198912-201411_100m_$s.nc &
        mv ${var}_${model}_198912-201411_100000_$s.nc ${var}_${model_new}_198912-201411_1000m_$s.nc &
        mv ${var}_${model}_198912-201411_400000_$s.nc ${var}_${model_new}_198912-201411_4000m_$s.nc &
    done
done

