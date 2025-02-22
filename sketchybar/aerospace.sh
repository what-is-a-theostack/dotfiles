UnDo
0    sketchybar --set $NAME background.drawing=on
1    sketchybar --set $NAME background.drawing=off5
#!/usr/bin/env bash
!# make sure it's executable with:
4# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
(if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
.  sketchybar --set $NAME background.drawing=on
else
/  sketchybar --set $NAME background.drawing=off
