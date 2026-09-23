#!/usr/bin/env bash
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

DIR="$1"
PCT="${PCT:-4}"   # percent of display width/height per press

read -r DW DH <<<"$(yabai -m query --displays --display | /usr/bin/python3 -c \
  'import json,sys; d=json.load(sys.stdin)["frame"]; print(int(d["w"]), int(d["h"]))')" || exit 0

DX=$(( DW * PCT / 100 ))
DY=$(( DH * PCT / 100 ))

case "$DIR" in
  left)  yabai -m window --resize left:-$DX:0    || yabai -m window --resize right:-$DX:0 ;;
  right) yabai -m window --resize right:$DX:0    || yabai -m window --resize left:$DX:0 ;;
  up)    yabai -m window --resize top:0:-$DY     || yabai -m window --resize bottom:0:-$DY ;;
  down)  yabai -m window --resize bottom:0:$DY   || yabai -m window --resize top:0:$DY ;;
esac
