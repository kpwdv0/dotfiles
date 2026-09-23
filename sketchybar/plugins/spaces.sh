#!/usr/bin/env bash

COLOR_FG=0xffd6d6d6

spaces=$(yabai -m query --spaces)

sketchybar --remove '/space\..*/'

echo "$spaces" | jq -c '.[]' | while read -r space; do
  index=$(echo "$space" | jq '.index')

  sketchybar --add item space.$index left \
    --set space.$index \
    label="$index" \
    label.color=$COLOR_FG
done
