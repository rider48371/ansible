#!/bin/bash
# qtile-session.sh
# Place this at ~/.config/qtile/qtile-session.sh
# Then point your SDDM custom session at it.

# Activate and position monitors before Qtile starts
~/.config/qtile/xrandr-monitors.sh

# Now start Qtile — monitors are already live when it counts screens
exec qtile start
