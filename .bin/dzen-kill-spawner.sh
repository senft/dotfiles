#!/bin/sh

. ~/.dzen-popup-config.sh

if [ -f $SPAWNER_PID_FILE ]; then
    kill `cat $SPAWNER_PID_FILE` 2> /dev/null
    rm $SPAWNER_PID_FILE
fi

/home/jln/.bin/dzen-kill-popup.sh
