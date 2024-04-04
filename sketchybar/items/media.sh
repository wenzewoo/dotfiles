media=(
  label.max_chars=30
  scroll_texts=on
  label.padding_right=10
  icon=󰎇
  icon.font="$ICON_FONT:Regular:18.0"
  label.font="$FONT:Regular:14.0"
  background.color=$BACKGROUND_2
  background.border_color=$BACKGROUND_2
  icon.background.drawing=on
  icon.background.image=media.artwork
  icon.background.image.corner_radius=9
  script="$PLUGIN_DIR/media.sh"
  blur_radius=30
  updates=on
)

sketchybar --add item media center \
           --set media "${media[@]}" \
           --subscribe media media_change
