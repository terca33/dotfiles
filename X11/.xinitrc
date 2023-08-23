# start urxvt daemon (server to which all urxvt clients will connect, ala tmux)
urxvtd -o -q -f

# Keyboard Layout
setxkbmap -layout hr,us -option 'grp:caps_toggle'
# CapsLock as Escape, and as Ctrl when pressed with another key
# setxkbmap -option 'caps:ctrl_modifier'; xcape -e 'Caps_Lock=Escape'&

xrdb -merge ~/.config/X11/.Xresources

# run automatic mounting of block devices
udiskie &

exec i3
