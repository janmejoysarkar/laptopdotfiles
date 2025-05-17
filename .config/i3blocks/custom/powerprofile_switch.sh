#!/bin/bash
#This automatically switches power profile to power-saver
#when the computer is disconnected from AC power.
#
#
STATUS=$(acpi | cut -d ':' -f2 | cut -d ',' -f1)
if [[ $STATUS == ' Discharging' ]]
then
	powerprofilesctl set power-saver
	echo "$(powerprofilesctl get)"
else
	powerprofilesctl set balanced
	echo "$(powerprofilesctl get)"
fi	
