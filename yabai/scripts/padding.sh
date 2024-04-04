#!/bin/bash

# 获取所有空间的信息
spaces_info=$(yabai -m query --spaces)

# 遍历每个空间
echo "$spaces_info" | jq -r '.[] | @base64' | while read space_info_b64; do
    # 解码空间信息
    space_info=$(echo "$space_info_b64" | base64 --decode)
    # 获取空间的编号和显示器的编号
    space_id=$(echo "$space_info" | jq '.index')
    display_id=$(echo "$space_info" | jq '.display')

    # 如果显示器的编号不是1，设置bottom_padding为40
    if [ "$display_id" != "1" ]; then
        yabai -m config --space "$space_id" bottom_padding 42
    fi
done

# yabai -m signal --add event=window_created action="~/.config/yabai/scripts/padding.sh"
# yabai -m signal --add event=window_destroyed action="~/.config/yabai/scripts/padding.sh"
# yabai -m signal --add event=window_moved action="~/.config/yabai/scripts/padding.sh"
# yabai -m signal --add event=space_changed action="~/.config/yabai/scripts/padding.sh"
# yabai -m signal --add event=display_added action="~/.config/yabai/scripts/padding.sh"
# yabai -m signal --add event=display_removed action="~/.config/yabai/scripts/padding.sh"