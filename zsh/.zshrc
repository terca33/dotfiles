source "$XDG_CONFIG_HOME/zsh/aliases"

# if expanded parameter contains directory add / in place of Space
setopt AUTO_PARAM_SLASH

# make globing case insesitive
unsetopt CASE_GLOB

#in /zsh/external will be put all scripts that are imported from others,
# autoload it automatically. Put this before compinit so it loads completion scripts in /external:
fpath=($ZDOTDIR/external $fpath)

# load a file containing shel commands to initialize completion
autoload -Uz compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)

# add file to improve auto-completion from prezto framework
source $DOTFILES/zsh/external/completion.zsh


# load prompt setup
autoload -Uz prompt_purification_setup; prompt_purification_setup

# push the current directory visited on to the stack
setopt AUTO_PUSHD
# do not store duplicate dirs on stack
setopt PUSHD_IGNORE_DUPS
# do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# enable vim mode. Change betewn modes with Esc
bindkey -v
# make the switch quicker
export KEYTIMEOUT=1

# run script to set vim cursor modes same as in nvim
# block for NORMAL, beam for INSERT
 autoload -Uz cursor_mode && cursor_mode

# add vim movements for autocompletion
# first load module complist to access menuselect
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# edit commands in vim by pressing v in NORMAL mode, and ending with :x ( or :wq)
# edit-command-line is function from zshcontrib
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# add script to use command bd to quickly go to parent dir without ../../
source ~/dotfiles/zsh/external/bd.zsh

# add custom scripts to be used as shell functions
source $DOTFILES/zsh/scripts.sh

# add fuzzy finder to zsh. First install it with pacman -S fzf
# first check if it exists and then source it
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# configuring i3 startup
if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Ctrl-l is being used in tmux for jumping to right pane
# so need to rebind clear
bindkey -r '^l'
bindkey -r '^g'
bindkey -s '^g' 'clear\n'

# run keychain on startup to start only one ssh-agent and enter needed passphrases only once
# if new keys are added to ~/.ssh/ add them into script
eval $(keychain -q --eval --agents ssh id_ed25519)

# turn off annoying beeps in console
# setterm --blength 0

# setup pyenv completion
eval "$(pyenv init -)"

# add syntax highlighting (first install with pacman)
# keep this always at the bottome of .zshrc so everything loaded before can use it
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
