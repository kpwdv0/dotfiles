#!/usr/bin/env bash

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

BAR_H="${BAR_H:-30}"
BAR_POS="${BAR_POS:-top}"   # top | bottom
if [ "$BAR_POS" = "bottom" ]; then
  yabai -m config external_bar "all:0:${BAR_H}"
else
  yabai -m config external_bar "all:${BAR_H}:0"
fi

if [ "${TILE:-1}" = "1" ]; then
  for idx in $(yabai -m query --spaces 2>/dev/null \
      | /usr/bin/python3 -c 'import json,sys; print(" ".join(str(s["index"]) for s in json.load(sys.stdin) if s["type"]!="bsp"))'); do
    yabai -m space "$idx" --layout bsp 2>/dev/null
  done
fi

yabai -m query --displays > /tmp/.yabai-displays.json 2>/dev/null || exit 0
yabai -m query --spaces   > /tmp/.yabai-spaces.json   2>/dev/null || exit 0

/usr/bin/python3 - <<'PY'
import json, subprocess

displays = json.load(open('/tmp/.yabai-displays.json'))
spaces   = json.load(open('/tmp/.yabai-spaces.json'))
size = {d['index']: (d['frame']['w'], d['frame']['h']) for d in displays}

def clamp(v, lo, hi):
    return max(lo, min(hi, v))

cmds = []
for sp in spaces:
    w, h = size.get(sp['display'], (1920.0, 1080.0))
    gap = int(clamp(round(w / 192.0), 4, 20))
    idx = str(sp['index'])
    for key, val in (
        ('window_gap',     gap),
        ('top_padding',    gap),
        ('bottom_padding', gap),
        ('left_padding',   gap),
        ('right_padding',  gap),
    ):
        cmds.append(['yabai', '-m', 'config', '--space', idx, key, str(val)])

for c in cmds:
    subprocess.run(c, capture_output=True)
PY
