#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if test $current_layout == 'dvorak'; then
  setxkbmap es
  dunstify "Layout was changed"  "Español"
else
  setxkbmap dvorak
  dunstify "Layout was changed"  "Dvorak"
fi
