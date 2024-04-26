source "$HOME/.config/sketchybar/colors.sh"
sketchybar --add event aerospace_workspace_change

# 1 DEV, 2 TERM, 3 DOC 4 WEB 5 CHAT 6 OTHER
ICONS_SPACE=("󰅨" "󰆍" "󰷈" "󰊯" "󱐒" "󰄷")
COLORS_SPACE=($GREEN $CYAN $BLUE $ORANGE $LIGHT_BLUE $MAGENTA)


index=0
for monitorid in $(aerospace list-monitors | awk '{print $1}'); do
    for sid in $(aerospace list-workspaces --monitor $monitorid); do
        sketchybar --add item space.$sid left \
            --subscribe space.$sid aerospace_workspace_change \
            --set space.$sid \
            associated_display=$monitorid \
            icon.font="$FONT:Regular:12.0"           \
            label.font="$FONT:Regular:12.0"           \
            background.color="0x44ffffff" \
            icon.padding_right=0 \
            label.padding_right=8 \
            background.corner_radius=5 \
            background.height=20 \
            background.drawing=on \
            label.font.size=15             \
            label="$sid ${ICONS_SPACE[index]}" \
            click_script="aerospace workspace $sid" \
            script="$CONFIG_DIR/plugins/aerospace.sh $sid ${COLORS_SPACE[index]}"
        ((index++))
    done
done



# Space bracket
sketchybar --add bracket spaces '/space\..*/'                        \
           --set         spaces background.color=$BACKGROUND_2      \
                                  blur_radius=30                    \
                                  shadow=on                         \
                                  background.border_color=$WHITE   \
                                  background.border_width=0        \
                                  icon.highlight_color=$BACKGROUND_2\
                                  icon.padding_left=6               \
                                  icon.padding_right=2              \
                                  label.color=$YELLOW               \
                                  label.highlight_color=$BACKGROUND_2 \
                                  label.padding_left=2              \
                                  label.padding_right=6             \