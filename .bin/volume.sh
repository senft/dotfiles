#!/bin/bash
amixer get Master | egrep -o "[0-9]+%" | head -1
