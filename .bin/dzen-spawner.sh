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

MUSIC_START=$((SCREEN_WIDTH-(SCREEN_WIDTH/3)))
MUSIC_END=$CAL_START

while true; do
    XPOS=$(xdotool getmouselocation 2> /dev/null | tail -1 | awk -F " " '{print $1}' | cut -d ":" -f 2)
    YPOS=$(xdotool getmouselocation 2> /dev/null | tail -1 | awk -F " " '{print $2}' | cut -d ":" -f 2)

    #echo $YPOS
    #echo $BAR_HEIGHT
    if [ $YPOS -gt $BAR_HEIGHT ]; then
        #echo "meh"
        continue
    fi

    if [ $XPOS -gt $CAL_START -a $XPOS -lt $CAL_END ]; then
        pid=$(pgrep -f "dzen-popup-cal")
        if [ -z "$pid" ]; then
            /home/jln/.bin/dzen-kill-popup.sh
            /home/jln/.bin/dzen-cal.sh 2> /dev/null &
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
    sleep 0.5
done
