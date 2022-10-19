#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

polybar bar1 -c ~/dotfiles/polybar/config.ini &

polybar bar2 -c ~/dotfiles/polybar/config.ini &

polybar bar3 -c ~/dotfiles/polybar/config.ini &

polybar bar4 -c ~/dotfiles/polybar/config.ini &
