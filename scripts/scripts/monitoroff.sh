#!/bin/bash

xrandr --output VGA1 --off --output LVDS1 --auto
xrandr --output HDMI3 --off --output LVDS1 --auto
xrandr --output HDMI1 --off --output LVDS1 --auto
xrandr --output DP2 --off --output LVDS1 --auto
xrandr --output LVDS1 
sh ~/.fehbg
