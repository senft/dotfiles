#!/bin/sh

gap=$(bspc config -d focused window_gap)
border=$(bspc config -d focused border_width)
top_padding=$(bspc config -d focused top_padding)

BACKGROUND="#121212"
FOREGROUND='#989584'
HIGHLIGHT="#eddcd3"
HIGHLIGHT2="#746c48"

BAR_BG="#454545"

BAR_HEIGHT=14
YPOS=36
YPOS=$((BAR_HEIGHT+top_padding+gap+border))
PADDING_RIGHT=$((gap+border))

#PANEL_FONT="tamzen"
#PANEL_FONT_SIZE=10

FONT="termsyn"
FONT_SIZE=11

KILL_DELAY=0.5
