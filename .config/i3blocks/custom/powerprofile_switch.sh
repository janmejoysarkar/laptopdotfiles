#!/bin/bash
#This automatically switches power profile to power-saver
#when the computer is disconnected from AC power.
#
#

STATUS=$(acpi | cut -d ':' -f2 | cut -d ',' -f1)
STATE_FILE=$HOME/.config/i3blocks/custom/powerstate
if [[ $STATUS == ' Discharging' ]]
then
	powerprofilesctl set `cat $STATE_FILE`
	echo "$(powerprofilesctl get)"
else
	powerprofilesctl set balanced
	echo "$(powerprofilesctl get)"
fi
