#!/bin/bash

. ~/.dzen-popup-config.sh

COVER_BASE="/home/jln/.config/ario/covers/"

SCREEN_WIDTH=$(sres -W)
WIDTH="230"
LINES="8"
XPOS=$((SCREEN_WIDTH-WIDTH-PADDING_RIGHT))

playing=$(mpc current)
if [ ! -z "$playing" ]; then
    artist=$(mpc current -f %artist%)
    album=$(mpc current -f %album%)

    date=$(mpc current -f %date%)
    track=$(mpc current -f %title%)
    #duration=$(mpc current -f %time%)
    filename="/home/jln/Musik/$(mpc current -f %file%)"
    bitrate=`mp3info -r m -p "%r" "$filename"`
    paused=$(mpc status | grep "paused")
    progress=$(mpc status | head -2 | tail -1 | awk '{print $3}')

    if [ -z "$album" ]; then
        art="$COVER_BASE""default.jpg"
    else
        art="$COVER_BASE$(ls $COVER_BASE | grep -v SMALL | grep "$album")"
        if [ "$art" = "$COVER_BASE" ]; then
            art="$COVER_BASE""default.jpg"
        fi
    fi

    #echo $art

    stats_width=`txtw -f "$FONT" -s "$FONT_SIZE" "$artist - $album"`
    stats_indent=$(((WIDTH-stats_width)/2))

    perc=`mpc | awk 'NR == 2 {gsub(/[()%]/,""); print $4}'`

    percbar=`echo -e "$perc" | gdbar -bg $BAR_BG -fg $HIGHLIGHT2 -h 1 -w $((WIDTH-40))`

    feh -Z -x -B black -g 113x113+$((XPOS-117))+$YPOS "$art" &
    feh_pid=$!

    (echo " ";
    if [ -z "$paused" ]; then
        echo -ne "^i(/home/jln/.icons/xbm8x8/play.xbm) ";
    else
        echo -ne "^i(/home/jln/.icons/xbm8x8/pause.xbm) ";
    fi
     echo "^fg($HIGHLIGHT)$track";
     echo "by ^fg($HIGHLIGHT)$artist";
     if [ -z "$date" ]; then
         echo "$album";
     else
         echo "$album ($date)";
     fi
     #echo "^ca(1, mpc prev)  ^fg()^i(/home/jln/.icons/xbm8x8/prev.xbm) ^ca()  ^ca(1, mpc pause) ^i(/home/jln/.icons/xbm8x8/pause.xbm) ^ca()  ^ca(1, mpc play) ^i(/home/jln/.icons/xbm8x8/play.xbm) ^ca()   ^ca(1, mpc next) ^i(/home/jln/.icons/xbm8x8/next.xbm) ^ca()";
     echo " ";
     echo "$progress min @ $bitrate kbps"
     echo " ";
     echo $percbar;) | dzen2 -p -fg $FOREGROUND -bg $BACKGROUND -fn "${FONT}:pixelsize=${FONT_SIZE}" -x $XPOS -y $YPOS -w $WIDTH -l $LINES -sa c -e 'onstart=uncollapse;button1=exit;button3=exit' -title-name 'dzen-popup-music'

     kill $feh_pid
fi
