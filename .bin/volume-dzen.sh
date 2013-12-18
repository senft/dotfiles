#!/bin/bash
COLOR_ON="#eddcd3"
COLOR_OFF="#989584"
BAR_MAX_WIDTH=40
BAR_HEIGHT=7
vol=`amixer get Master | grep "\[on\]" | egrep -o "[0-9]+%" | head -1 | sed 's/%//'`
echo $vol | gdbar -h $BAR_HEIGHT -w $BAR_MAX_WIDTH -fg $COLOR_ON -bg $COLOR_OFF
