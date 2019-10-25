#!/bin/bash

xrandr --output HDMI3 --off
xrandr --output DP2 --off
xrandr --output VGA1 --off
xrandr --output HDMI1 --off

xrandr --output LVDS1 --mode 1366x768
xrandr --output HDMI3 --primary --mode 1920x1080 --rotate right --left-of LVDS1

sh ~/.fehbg &
xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xmodmap ~/.Xmodmap
nm-applet
