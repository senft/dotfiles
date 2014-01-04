#!/bin/bash

. ~/.dzen-popup-config.sh

#XPOS=$(xdotool getmouselocation | awk -F " " '{print $1}' | cut -d ":" -f 2)
XPOS=942
WIDTH="230"
LINES="7"

playing=$(mpc current)
artist=$(mpc current -f  %artist%)
album=$(mpc current -f  %album%)
track=$(mpc current -f  %title%)
#art=$(ls ~/.config/ario/covers | grep SMALL | grep $album)
#art="/home/sunn/.config/ario/covers/$(ls ~/.config/ario/covers | grep SMALL | grep "$(mpc current -f %album%)")"

stats_width=`txtw -f "$FONT" -s "$FONT_SIZE" "$artist - $album"`
stats_indent=$(((WIDTH-stats_width)/2))

perc=`mpc | awk 'NR == 2 {gsub(/[()%]/,""); print $4}'`

percbar=`echo -e "$perc" | gdbar -bg $BAR_BG -fg $HIGHLIGHT2 -h 1 -w $WIDTH`

#feh -x -B black -g +$(($XPOS-84))+$(($YPOS+15)) "$art" &
(echo " "; echo "^fg($HIGHLIGHT)$track"; echo "$artist - $album"; echo " "; echo "^ca(1, mpc prev)  ^fg()^i(/home/jln/.icons/xbm8x8/prev.xbm) ^ca()  ^ca(1, mpc pause) ^i(/home/jln/.icons/xbm8x8/pause.xbm) ^ca()  ^ca(1, mpc play) ^i(/home/jln/.icons/xbm8x8/play.xbm) ^ca()   ^ca(1, mpc next) ^i(/home/jln/.icons/xbm8x8/next.xbm) ^ca()"; echo " "; echo $percbar; echo " ";) | dzen2 -p -fg $FOREGROUND -bg $BACKGROUND -fn "${FONT}:pixelsize=${FONT_SIZE}" -x $XPOS -y $YPOS -w $WIDTH -l $LINES -sa c -e 'onstart=uncollapse;button1=exit;button3=exit' -title-name 'dzen-popup-music'
#echo $! > $POPUP_PID_FILE
#sleep 15
#killall feh
