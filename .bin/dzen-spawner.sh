#!/bin/sh

. ~/.dzen-popup-config.sh

for pid in `pgrep -f -x "/bin/sh /home/jln/.bin/dzen-kill-spawner.sh"`
do
    #echo "kill running dzen-kill-spawner.sh with pid $pid"
    kill "$pid"
done

SCREEN_WIDTH=$(sres -W)

CAL_START=$((SCREEN_WIDTH-110))
CAL_END=$SCREEN_WIDTH

music_text=$(mpc current)
music_width=$(txtw -f $PANEL_FONT -s $PANEL_FONT_SIZE "$music_text")

MUSIC_START=$((CAL_START-140-music_width))
MUSIC_END=$CAL_START

while true; do
    sleep 0.5

    mousepos=$(xdotool getmouselocation 2> /dev/null | tail -1 2> /dev/null)
    YPOS=$(echo $mousepos | awk '{print $2}' | cut -d ":" -f 2 2> /dev/null)
    if [ $YPOS -gt $BAR_HEIGHT ]; then
        continue
    fi

    XPOS=$(echo $mousepos | awk '{print $1}' | cut -d ":" -f 2)

    if [ $XPOS -gt $CAL_START -a $XPOS -lt $CAL_END ]; then
        pid=$(pgrep -f "dzen-popup-cal")
        if [ -z "$pid" ]; then
            /home/jln/.bin/dzen-kill-popup.sh
            /home/jln/.bin/dzen-cal.sh 2> /dev/null &
            /home/jln/.bin/dzen-todo.sh 2> /dev/null &
        fi
    elif [ $XPOS -gt $MUSIC_START -a $XPOS -lt $MUSIC_END ]; then
        pid=$(pgrep -f "dzen-popup-music")
        if [ -z "$pid" ]; then
            /home/jln/.bin/dzen-kill-popup.sh
            /home/jln/.bin/dzen-music.sh 2> /dev/null &
        fi
    else
        /home/jln/.bin/dzen-kill-popup.sh
    fi
done
