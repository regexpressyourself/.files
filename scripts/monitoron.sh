#!/bin/bash

# setting up new mode for my VGA
xrandr --newmode "1920x1080" 148.5 1920 2008 2052 2200 1080 1089 1095 1125 +hsync +vsync
xrandr --addmode HDMI3 1920x1080

xrandr --output HDMI3 --mode 1920x1080 --right-of LVDS1 --output LVDS1 --mode 1366x768 
sh ~/config/.fehbg
