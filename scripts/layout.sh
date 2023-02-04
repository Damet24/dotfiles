#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if test $current_layout == 'dvorak'; then
  setxkbmap es
  notify-send "Layout was changed"  "Español" -t 2
else
  setxkbmap dvorak
  notify-send "Layout was changed"  "Dvorak" -t 2
fi
