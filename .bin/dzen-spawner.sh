#!/bin/sh

. ~/.dzen-popup-config.sh

echo $$ > $SPAWNER_PID_FILE

while true; do
    XPOS=$(xdotool getmouselocation 2> /dev/null | tail -1 | awk -F " " '{print $1}' | cut -d ":" -f 2)

    if [ $XPOS -gt 1240 ]; then
        pid=$(pgrep -f "dzen-popup-cal")
        if [ -z "$pid" ]; then
            /home/jln/.bin/dzen-kill-popup.sh
            /home/jln/.bin/dzen-cal.sh 2> /dev/null &
        fi
    #elif [ $XPOS -gt 950 -a $XPOS -lt 1170 ]; then
    #    pid=$(pgrep -f "dzen-popup-music")
    #    if [ -z "$pid" ]; then
    #        /home/jln/.bin/dzen-kill-popup.sh
    #        /home/jln/.bin/dzen-music.sh 2> /dev/null &
    #    fi
    else
        /home/jln/.bin/dzen-kill-popup.sh
    fi
    sleep 0.5
done
