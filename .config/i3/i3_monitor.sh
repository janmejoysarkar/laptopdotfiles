#!/bin/bash
xrandr --auto
nitrogen --restore
mon=$(xrandr --listmonitors | grep Monitors | cut -d ":" -f 2)
if [ $mon -gt 1 ]
then
	xrandr --output eDP-1 --off
	xrandr --output HDMI-1 #--rotate left
	exec nitrogen --restore
else
	xrandr --output eDP-1 --auto
	exec nitrogen --restore
fi
