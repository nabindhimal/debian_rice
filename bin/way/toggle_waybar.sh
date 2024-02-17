#!/bin/bash

# Check if waybar is running
if pgrep -x "waybar" > /dev/null
then
    # If waybar is running, kill it
    killall waybar
    # echo "waybar stopped."
else
    # If waybar is not running, start it
    waybar -c ~/.config/waybar/config.jsonc &
    # echo "waybar started."
fi

