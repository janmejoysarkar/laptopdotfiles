#!/bin/bash

OP1="eDP-1"
OP2="HDMI-1"
MODE=$(echo -e "$OP1\n$OP2\n$OP2 left of $OP1\n$OP2 right of $OP1\nNO-CHANGE" | rofi -dmenu -p "Display Mode")

if [[ $MODE == "$OP1" ]]
	then
	# only primary monitor
	xrandr --output "$OP1" --auto --primary --output "$OP2" --off
	sleep 2
	nitrogen --restore

elif [[ $MODE == "$OP2" ]]
	then
	# only secondary monitor
	xrandr --output "$OP2" --auto --primary --output "$OP1" --off
	sleep 2
	nitrogen --restore

elif [[ $MODE == "$OP2 left of $OP1" ]]
	then
	# both monitors
	xrandr --output "$OP1" --primary --auto --output "$OP2" --auto --left-of "$OP1"
	sleep 2
	nitrogen --restore

elif [[ $MODE == "$OP2 right of $OP1" ]]
	then
	# both monitors
	xrandr --output "$OP1" --primary --auto --output "$OP2" --auto --right-of "$OP1" 
	sleep 2
	nitrogen --restore
else
	echo "NO-CHANGE"
fi
