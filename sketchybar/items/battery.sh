#!/bin/bash

battery=(
  script="$PLUGIN_DIR/battery.sh"
  icon.font="$ICON_FONT:Regular:16.0"
  label.font="$FONT:Regular:14.0"
  padding_right=3
  padding_left=1
  label.padding_left=-4
  label.padding_right=10
  # label.y_offset=-1.5
  y_offset=1
  label.drawing=on
  update_freq=120
  updates=on
)

sketchybar --add item battery right      \
           --set battery "${battery[@]}" \
           --subscribe battery power_source_change system_woke
