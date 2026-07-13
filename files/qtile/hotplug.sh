#!/bin/bash
# hotplug.sh
# Place at ~/.config/qtile/hotplug.sh
# Called by udev when a monitor is plugged or unplugged.
# Runs xrandr to arrange monitors then restarts Qtile so it
# re-initialises screens with the correct monitor count.

export DISPLAY=:0
export XAUTHORITY=/home/fred/.Xauthority

# Wait briefly for the display link to stabilise
sleep 1

# Arrange monitors based on what's currently connected
/home/fred/.config/qtile/xrandr-monitors.sh

# Restart Qtile so it re-counts screens
qtile cmd-obj -o cmd -f restart
