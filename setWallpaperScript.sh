#!/bin/bash

# check filepath
if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/wallpaper.jpg"
    exit 1
fi

FILE="$1"

# check file itself
if [ ! -f "$FILE" ]; then
    echo "Error: '$FILE' does not exist."
    exit 1
fi

# verifie if the providet file is an image
if ! file "$FILE" | grep -qiE "image|bitmap"; then
    echo "Error: '$FILE' is not an image."
    exit 1
fi

echo "Using wallpaper: $FILE"

# set wallpaper
feh --bg-fill "$FILE"

# generate pywal colors
wal -i "$FILE"

# reload kitty colors
kitty @ set-colors --all ~/.cache/wal/colors-kitty.conf

# reload polybar
pkill polybar
polybar &

# set colours for the borders(if it even works)
~/.config/herbstluftwm/wal-hlwm.sh

# generate and set lockscreen
betterlockscreen -u "$FILE"

# clear the terminal afterwards
sleep 1
clear
fastfetch
