#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/hack"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log

PRIMARY=$(xrandr | grep ' connected' | grep 'primary' | cut -d' ' -f1)
SECONDARY=$(xrandr | grep ' connected' | grep -v 'primary' | cut -d' ' -f1)

echo Lauching primary bar on $PRIMARY
echo Lauching secondary bar on $SECONDARY

MONITOR=$PRIMARY polybar -q top -c "$DIR"/config.ini >>/tmp/polybar.log 2>&1 &

for MONITOR in $SECONDARY
do
        MONITOR=$MONITOR polybar secondary -c "$DIR"/config.ini >>/tmp/polybar.log 2>&1 &
done

echo "Bars launched..."
