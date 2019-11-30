#!/bin/bash
ICON=$(shuf -n1 -e ~/.config/i3/utils/lock/Ar*.png)
ICONTEMP= ~/.config/i3/utils/lock/icon_temp.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $ICON -resize 300x300 $ICONTEMP
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
rm ICONTEMP
#mutes the sound
#pactl set-sink-mute @DEFAULT_SINK@ 1
i3lock -u -i $TMPBG

