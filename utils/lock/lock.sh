#!/bin/bash
ICON=$(shuf -n1 -e /home/ivo/lockConfig/*.png)
ICONTEMP=/home/ivo/lockConfig/icon_temp.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $ICON -resize 300x300 $ICONTEMP
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICONTEMP -gravity center -composite -matte $TMPBG
rm ICONTEMP
#mutes the sound
#pactl set-sink-mute @DEFAULT_SINK@ 1
i3lock -u -i $TMPBG
