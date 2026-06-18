#!/bin/bash

OP1="eDP-1"
OP2="HDMI-A-1"

MODE=$(printf "%s\n%s\n%s\n%s\nNO-CHANGE" \
    "$OP1" \
    "$OP2" \
    "$OP2 left of $OP1" \
    "$OP2 right of $OP1" |
    rofi -dmenu -p "Display Mode")

if [[ $MODE == "$OP1" ]]; then
    # laptop only
    swaymsg output "$OP1" enable pos 0 0
    swaymsg output "$OP2" disable

elif [[ $MODE == "$OP2" ]]; then
    # external only
    swaymsg output "$OP2" enable pos 0 0
    swaymsg output "$OP1" disable

elif [[ $MODE == "$OP2 left of $OP1" ]]; then
    # HDMI left, laptop right
    swaymsg output "$OP2" enable pos 0 0
    swaymsg output "$OP1" enable pos 1920 0

elif [[ $MODE == "$OP2 right of $OP1" ]]; then
    # laptop left, HDMI right
    swaymsg output "$OP1" enable pos 0 0
    swaymsg output "$OP2" enable pos 1920 0

else
    echo "NO-CHANGE"
fi
