#!/bin/bash

percentage=$(upower -i $(upower -e | grep 'BAT') | grep percentage | cut -d ' ' -f 15)
state_raw=$(upower -i $(upower -e | grep 'BAT') | grep state | cut -d ' ' -f 20)
case $state_raw in
    "discharging")
        state=" d"
        ;;
    "charging")
        state=" c"
        ;;

    "fully-charged")
        state="full"
        percentage=""
        ;;
esac
echo "$percentage$state"
