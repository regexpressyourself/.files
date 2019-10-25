#!/bin/bash

xrandr --output HDMI3 --off
xrandr --output DP2 --off
xrandr --output VGA1 --off
xrandr --output HDMI1 --off

xrandr --output DP2 --primary --mode 2560x1440 --left-of LVDS1 --output LVDS1 --mode 1366x768

sh ~/.fehbg &
xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xmodmap ~/.Xmodmap
nm-applet


