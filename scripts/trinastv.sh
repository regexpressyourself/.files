
#!/bin/bash

# setting up new mode for my VGA
xrandr --newmode "1280x720" 148.5 1920 2008 2052 2200 1080 1089 1095 1125 +hsync +vsync
xrandr --addmode HDMI1 1280x720 

xrandr --output HDMI1 --mode 1280x720 --right-of LVDS1 --output LVDS1 --mode 1366x768 
sh ~/.fehbg
