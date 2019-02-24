# Load xterm resources ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Launch i3
exec i3


