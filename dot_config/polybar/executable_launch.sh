#!/usr/bin/bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q workspace -c $HOME/.config/polybar/config.ini &
