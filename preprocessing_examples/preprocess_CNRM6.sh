base="/pool/data/CMIP6/data/CMIP/CNRM-CERFACS/CNRM-CM6-1/historical/r1i1p1f2/"
model="CNRM6"


vararray=("ua" "zg" "siconc" "tas" "clt" "pr" "rlut" "uas" "vas")
mode="onefile" #onefile, yearly, decadal, five, four

for var in ${vararray[*]}; do
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
        g="gn"
        version="v20180917"
    else
        group="Amon"
        g="gr"
        version="v20180917"
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
else
    steps="24/323"
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









vararray=("so")
mode="four" #onefile, yearly, decadal, five, four

for var in ${vararray[*]}; do
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
        g="gn"
        version="v20180917"
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]]; then
        group="Omon"
        g="gn"
        version="v20180917"
    else
        group="Amon"
        g="gr"
        version="v20180917"
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
    if [[ "$mode" = "six" ]]; then
        ln -s $base/$group/$var/$g/$version/*1975* .
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
done
wait

if [[ "$mode" = "onefile" ]]; then
    steps="1680/1979"
elif [[ "$mode" = "five" ]]; then
    steps="240/539"
elif [[ "$mode" = "six" ]]; then
    steps="120/419"
elif [[ "$mode" = "four" ]]; then
    steps="480/779"
elif [[ "$mode" = "two" ]]; then
    steps="480/779"
else
    steps="24/323"
fi



for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo -remapbil,r180x91 -sellevel,50000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "ua" ]]; then
        cdo -remapbil,r180x91 -sellevel,30000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]] ; then
        cdo -splitlevel -remapbil,r180x91 -intlevel,10,100,1000,4000 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
    else
        cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    fi
done
wait


for var in ${vararray[*]}; do
    levels=('000010' '000100' '001000' '004000')
    for i in "${levels[@]}"; do
        cdo splitseas -yseasmean ${var}_${model}_198912-201411_${i}.nc ${var}_${model}_198912-201411_${i}_ &
    done
done
wait
for var in ${vararray[*]}; do
    levels=('000010' '000100' '001000' '004000')
    for i in "${levels[@]}"; do
        mv ${var}_${model}_198912-201411_000010.nc ${var}_${model}_198912-201411_10m.nc &
        mv ${var}_${model}_198912-201411_000100.nc ${var}_${model}_198912-201411_100m.nc &
        mv ${var}_${model}_198912-201411_001000.nc ${var}_${model}_198912-201411_1000m.nc &
        mv ${var}_${model}_198912-201411_004000.nc ${var}_${model}_198912-201411_4000m.nc &
    done
done
wait






vararray=("thetao")
mode="six" #onefile, yearly, decadal, five, four

for var in ${vararray[*]}; do
    if [[ "$var" = "siconc" ]]; then
        group="SImon"
        g="gn"
        version="v20180917"
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]]; then
        group="Omon"
        g="gn"
        version="v20180917"
    else
        group="Amon"
        g="gr"
        version="v20180917"
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
    if [[ "$mode" = "six" ]]; then
        ln -s $base/$group/$var/$g/$version/*1975* .
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
done
wait

if [[ "$mode" = "onefile" ]]; then
    steps="1680/1979"
elif [[ "$mode" = "five" ]]; then
    steps="240/539"
elif [[ "$mode" = "six" ]]; then
    steps="120/419"
elif [[ "$mode" = "four" ]]; then
    steps="480/779"
elif [[ "$mode" = "two" ]]; then
    steps="480/779"
else
    steps="24/323"
fi



for var in ${vararray[*]}; do
    if [[ "$var" = "zg" ]]; then
        cdo -remapbil,r180x91 -sellevel,50000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "ua" ]]; then
        cdo -remapbil,r180x91 -sellevel,30000 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    elif [[ "$var" = "thetao" ]] || [[ "$var" = "so" ]] ; then
        cdo -splitlevel -remapbil,r180x91 -intlevel,10,100,1000,4000 -seltimestep,$steps $var ${var}_${model}_198912-201411_ &
    else
        cdo -remapbil,r180x91 -seltimestep,$steps $var ${var}_${model}_198912-201411.nc &
    fi
done
wait


for var in ${vararray[*]}; do
    levels=('000010' '000100' '001000' '004000')
    for i in "${levels[@]}"; do
        cdo splitseas -yseasmean ${var}_${model}_198912-201411_${i}.nc ${var}_${model}_198912-201411_${i}_ &
    done
done
wait
for var in ${vararray[*]}; do
    levels=('000010' '000100' '001000' '004000')
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_000010_$s.nc ${var}_${model}_198912-201411_10m_$s.nc &
        mv ${var}_${model}_198912-201411_000100_$s.nc ${var}_${model}_198912-201411_100m_$s.nc &
        mv ${var}_${model}_198912-201411_001000_$s.nc ${var}_${model}_198912-201411_1000m_$s.nc &
        mv ${var}_${model}_198912-201411_004000_$s.nc ${var}_${model}_198912-201411_4000m_$s.nc &
    done
done
wait


model="CNRM6"
model_new="CNRM-CM6-1-HR"
vararray=("siconc" "tas" "tos" "zos" "clt" "rlut" "pr" "uas" "vas")
seasons=('MAM' 'JJA' 'SON' 'DJF')
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_$s.nc ${var}_${model_new}_198912-201411_surface_$s.nc &
    done
done

vararray=("zg")
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_$s.nc ${var}_${model_new}_198912-201411_500hPa_$s.nc &
    done
done


vararray=("ua")
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_$s.nc ${var}_${model_new}_198912-201411_300hPa_$s.nc &
    done
done

vararray=("so" "thetao")
for var in ${vararray[*]}; do
    for s in "${seasons[@]}"; do
        mv ${var}_${model}_198912-201411_000010_$s.nc ${var}_${model_new}_198912-201411_10m_$s.nc &
        mv ${var}_${model}_198912-201411_000100_$s.nc ${var}_${model_new}_198912-201411_100m_$s.nc &
        mv ${var}_${model}_198912-201411_001000_$s.nc ${var}_${model_new}_198912-201411_1000m_$s.nc &
        mv ${var}_${model}_198912-201411_004000_$s.nc ${var}_${model_new}_198912-201411_4000m_$s.nc &
    done
done

