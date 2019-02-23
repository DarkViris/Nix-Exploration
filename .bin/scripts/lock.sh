#!/usr/bin/env bash

# Script used to setup and lock Screen
# To Setup
# 1 - Install ImageMagick
# 2 - Create this script at ~.bin/scripts/lock.sh
# 3 - Make executable with chmod +x
# 4 - bind to keyboard shortcut in i3 config


# set icon variable
icon="$HOME/Pictures/lockIcon.png"

# set background variable
tmpbg='/tmp/lockScreen.png'

(( $# )) && { icon=$1; }

# Capture Screen
import -window root "$tmpbg"

# Pixelate the Screen
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"

# Overlay Icon
composite -compose atop -gravity center "$icon" "$tmpbg" "$tmpbg"

# Lock Screen
i3lock -u -i "$tmpbg"
