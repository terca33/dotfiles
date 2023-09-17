#!/bin/bash

########
# nvim #
########

rm -rf "$XDG_CONFIG_HOME/nvim"
ln -s "$DOTFILES/nvim" "$XDG_CONFIG_HOME/nvim"

#######
# X11 #
#######

rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME/X11"

######
# i3 #
######

rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME/i3"

#######
# zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"
# for first .zshenv invocation
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
# after initial sourcing, subsequent zsh shells will source .zshenv from $ZDOTDIR
ln -sf "$DOTFILES/zsh/.zshenv" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########################
# Desktop Notifications #
#########################

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc"  "$XDG_CONFIG_HOME/dunst/dunstrc"

#############
# automount #
#############

#udiskie doesn't have easy way to change mount point to /media so I will symlink it
sudo rm -rf /media
sudo mkdir /media
sudo ln -s "/run/media/$USER" "/media"

#######
# git #
#######

[[ -f "$HOME/.gitconfig" ]] && rm -f "$HOME/.gitconfig"
rm -rf "$XDG_CONFIG_HOME/git"
ln -s "$DOTFILES/git" "$XDG_CONFIG_HOME/git"

########
# tmux #
########

mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

# install Plugins
[ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ] \
    && git clone https://github.com/tmux-plugins/tpm \
    "$XDG_CONFIG_HOME/tmux/plugins/tpm"

# tmux session templates
rm -rf "$XDG_CONFIG_HOME/tmuxp"
ln -s "$DOTFILES/tmuxp" "$XDG_CONFIG_HOME/tmuxp"

###########
# zathura #
###########

mkdir -p "$XDG_CONFIG_HOME/zathura"
ln -sf "$DOTFILES/zathura/zathurarc" "$XDG_CONFIG_HOME/zathura/zathurarc"

#############
# alacritty #
#############

rm -rf "$XDG_CONFIG_HOME/alacritty"
ln -s "$DOTFILES/alacritty" "$XDG_CONFIG_HOME/alacritty"

##########
# python #
##########

# poetry dependency manager
mkdir -p "$XDG_CONFIG_HOME/pypoetry"
ln -sf "$DOTFILES/pypoetry/config.toml" "$XDG_CONFIG_HOME/pypoetry/config.toml"
