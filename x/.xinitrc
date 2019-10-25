sh ~/.fehbg &
[[ -f ~/.Xresources ]]
xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
rfkill block bluetooth
alsactl init
xmodmap ~/.Xmodmap

xrandr --newmode "1920x1080" 148.5 1920 2008 2052 2200 1080 1089 1095 1125 +hsync +vsync
xrandr --addmode HDMI3 1920x1080
xrandr --addmode DP2 2560x1440
xrandr --newmode "2560x1440"  201.00  2560 2720 2984 3408  1440 1443 1448 1476 +hsync +vsync

export BROWSER=firefox
exec i3
#exec gnome-session

nm-applet
xrandr --dpi 125.37


