#!/bin/bash
$HOME/.screenlayout/default.sh
dunst &
xset s 540 #screen saver enable in 9 mins
xset dpms 600 600 600 #turn off screen in 10 mins
blueman-applet &
nitrogen --restore
python3 /home/janmejoy/dropbox.py start &
notify-send 'Hello' $USER &
picom &
#xset s off -dpms & #disables screensaver and turns off dpms
