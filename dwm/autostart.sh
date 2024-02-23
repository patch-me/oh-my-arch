#!/usr/bin/env bash
picom &
clipmenud &
feh --scale-down --bg-fill $HOME/.config/feh/wallpaper.png &
dwmblocks &
setxkbmap -layout fr -variant mac
