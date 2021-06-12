ffmpeg -i in.mov -pix_fmt rgb24 -r 30 -f gif - | gifsicle --optimize=3 --delay=3 > out.gif
