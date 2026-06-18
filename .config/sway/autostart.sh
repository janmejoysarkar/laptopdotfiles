#!/bin/bash
nm-applet &
kanshi &
dunst &
blueman-applet &
awww-daemon &
python3 /home/janmejoy/dropbox.py start &
notify-send 'Hello' $USER &
