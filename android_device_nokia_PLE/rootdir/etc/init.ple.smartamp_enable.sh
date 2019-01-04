#!/system/bin/sh

init_completed=`getprop audio.smartamp.init`
smartamp_enable=`getprop persist.smartamp.enable`

if [ "$init_completed" == "true"  ]; then
	if [ "$smartamp_enable" == "1"  ]; then
		FIH_SmartAmp condchange music > /dev/null 2>&1
	elif [ "$smartamp_enable" == "2"  ]; then
		FIH_SmartAmp condchange loudmusic > /dev/null 2>&1
	else
		FIH_SmartAmp condchange bypass6v > /dev/null 2>&1
	fi
fi

