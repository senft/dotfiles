#!/bin/bash
amixer get Master | grep "\[on\]" | egrep -o "[0-9]+%" | head -1
