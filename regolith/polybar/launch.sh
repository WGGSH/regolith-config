#!/bin/sh

killall polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example -c ~/.config/polybar/config.ini &
  done
else
  polybar --reload example &
fi
