#!/bin/bash
# xrandr-monitors.sh
# Called on Qtile startup and whenever the dock is connected.
# Activates and positions all three monitors then restarts Qtile
# so it re-counts screens with all outputs live.

LAPTOP="eDP-1"
EXT1="DP-1-1"
EXT2="DP-1-2"

# Check if both external monitors are connected
EXT1_CONNECTED=$(xrandr --query | grep "^${EXT1} connected")
EXT2_CONNECTED=$(xrandr --query | grep "^${EXT2} connected")

if [ -n "$EXT1_CONNECTED" ] && [ -n "$EXT2_CONNECTED" ]; then
    xrandr \
        --output "$LAPTOP" --auto --primary \
        --output "$EXT1"   --auto --right-of "$LAPTOP" \
        --output "$EXT2"   --auto --right-of "$EXT1"
else
    # Only laptop screen — turn off any stale external outputs
    xrandr \
        --output "$LAPTOP" --auto --primary \
        --output "$EXT1"   --off \
        --output "$EXT2"   --off
fi
