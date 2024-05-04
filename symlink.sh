create_symlink() {
    if [ "$#" -ne 2 ]; then
        echo "Usage: create_symlink <source_file/folder> <target_file/folder>"
        return 1
    fi
    local source="$1"
    local target="$2"

    if [ -e "$target" ]; then
        rm -rf "$target"
    fi

    echo "create_symlink: ln -s $source $target"
    ln -s "$source" "$target"
}


# Window
create_symlink "${HOME}/Public/dotfiles/sketchybar" "${HOME}/.config/sketchybar"
create_symlink "${HOME}/Public/dotfiles/aerospace" "${HOME}/.config/aerospace"
create_symlink "${HOME}/Public/dotfiles/yabai" "${HOME}/.config/yabai"
create_symlink "${HOME}/Public/dotfiles/skhd" "${HOME}/.config/skhd"
# Terminal
create_symlink "${HOME}/Public/dotfiles/zsh/zshrc" "${HOME}/.zshrc"
create_symlink "${HOME}/Public/dotfiles/kitty" "${HOME}/.config/kitty"
create_symlink "${HOME}/Public/dotfiles/spacevim" "${HOME}/.SpaceVim.d"


# Private
create_symlink "${HOME}/Public/dotfiles/kube" "${HOME}/.kube"
create_symlink "${HOME}/Public/dotfiles/mvn/settings-oray.xml" "${HOME}/.m2/settings-oray.xml"
create_symlink "${HOME}/Public/dotfiles/mvn/settings-aliyun.xml" "${HOME}/.m2/settings-aliyun.xml"
create_symlink "${HOME}/Public/dotfiles/git/gitconfig" "${HOME}/.gitconfig"
