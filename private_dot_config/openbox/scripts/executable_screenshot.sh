#!/bin/bash

# options to be displayed
option0="screen"
option1="area"
option2="window"

# options to be displayed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "scrot")"
option=""
case $selected in
    $option1)
        option="-s";;
    $option2)
        option="-u";;
esac

filename="$HOME/Pictures/screenshots/%Y-%m-%d_%H:%M:%S.png"
sleep 1 && scrot "${option}" "${filename}"
