sh ~/.fehbg &
[[ -f ~/.Xresources ]]
xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
rfkill block bluetooth
alsactl init
xmodmap ~/.Xmodmap
export BROWSER=firefox
exec i3

nm-applet
xrandr --dpi 125.37


