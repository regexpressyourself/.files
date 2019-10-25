#!/bin/bash

xrandr --output LVDS1 --off
xrandr --output HDMI3 --off
xrandr --output DP2 --off
xrandr --output VGA1 --off
xrandr --output HDMI1 --off

xrandr --output DP2 --primary --mode 2560x1440
xrandr --output HDMI3 --mode 1920x1080 --rotate right --left-of DP2

sh ~/.fehbg &
xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xmodmap ~/.Xmodmap
nm-applet
