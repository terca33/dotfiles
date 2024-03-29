#
# XDG Base Directories. See arch wiki
#
# for dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# for specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# for cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

#################################################

export EDITOR="nvim"
export VISUAL="nvim"

# location of zsh config files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=10000
# Maximum events in history file
export SAVEHIST=10000

#IMPORTANT for setting up install.sh and .zshrc
export DOTFILES="$HOME/dotfiles"

# fzf and ripgrep in place of find
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# set up awk path
export AWKPATH="$XDG_CONFIG_HOME/awk"

# for use by i3-sensible-terminal launcher
export TERMINAL="alacritty"

# PATH
export PATH="$HOME/.local/bin:$PATH"

# setup for python Poetry. see https://github.com/python-poetry/poetry/issues/1917#issuecomment-1380429197
export PYTHON_KEYRING_BACKEND="keyring.backends.null.Keyring"

# pyenv setup
export PYENV_ROOT="$XDG_CONFIG_HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# set libvirt connection to local hypervisor as root ($ virsh uri = qemu:///system)
# libvirt and virsh can be run without root
export LIBVIRT_DEFAULT_URI='qemu:///system'
