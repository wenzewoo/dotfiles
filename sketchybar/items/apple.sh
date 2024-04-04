#!/bin/bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'

apple_logo=(
  background.color=$BACKGROUND_1
  shadow=on
  icon=$APPLE
  icon.font="$FONT:Black:16.0"
  icon.color=$GREEN
  icon.padding_right=15
  icon.padding_left=15
  label.drawing=off
  popup.height=35
  click_script="open -a Launchpad"
)


sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"        

