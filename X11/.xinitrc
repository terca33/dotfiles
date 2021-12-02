# start urxvt daemon (server to which all urxvt clients will connect, ala tmux)
urxvtd -o -q -f
# Keyboard Layout
setxkbmap hr &

xrdb -merge ~/.config/X11/.Xresources

# run automatic mounting of block devices
udiskie &

exec i3
