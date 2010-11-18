#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

DEFAULT_SESSION=i3

urxvtd -f

xsetroot -cursor_name left_ptr &
xset m 1 0
xscreensaver -nosplash &

mpd &
mpdscribble &
mpd-new-track &

volumeicon &
trayer --edge top --align right --width 5 --height 10 --alpha 0 --transparent true --tint 0x0000000 &

#urxvt &
urxvtc &

# echo 'pass' | encfs ~/Dropbox/Encoded ~/.Dropbox_Decoded/ -S &

feh --bg-scale ~/Bilder/Wallpaper/wallpaper-13433.jpg

case $1 in
xmonad)
	exec ck-launch-session xmonad | dzen2
	;;
i3)
	exec ck-launch-session /usr/bin/i3 -V -d all >~/.i3/i3log-$(date +'%F-%k-%M-%S') 2>&1
	;;
openbox)
	exec ck-launch-session openbox-session
	;;
*)
	exec ck-launch-session $DEFAULT_SESSION
	;;
esac
