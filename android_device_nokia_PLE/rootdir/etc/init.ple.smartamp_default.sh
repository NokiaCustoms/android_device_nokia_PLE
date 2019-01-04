#!/system/bin/sh

smartamp_enable=`getprop persist.smartamp.enable`
smartamp_callenable=`getprop persist.smartamp.callenable`
project_name=`getprop ro.bsp.device`

if [ -z "$smartamp_enable" ]; then
	if [ "$project_name" == "PLE"  ]; then
		setprop persist.smartamp.enable 1
	else
		# enable smartamp for all project
		setprop persist.smartamp.enable 1
	fi
fi

setprop persist.smartamp.enable 1

if [ -z "$smartamp_callenable" ]; then
	setprop persist.smartamp.callenable true
fi
