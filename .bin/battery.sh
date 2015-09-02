#!/bin/bash
upower -i $(upower -e | grep 'BAT') | grep percentage | cut -d ' ' -f 15
