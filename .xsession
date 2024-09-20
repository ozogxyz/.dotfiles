# keyboard delay and repeat rate, I don't why this overrides wsconsctl
xset r rate 150 25

# xidle will lock your display after a period of inactivity
xidle &

# sadly, xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# some Firefox magic
export MOZ_ACCELERATED=1 MOZ_WEBRENDER=1

# Emacs pinky
setxkbmap -option "caps:none"
setxkbmap -option "caps:ctrl_modifier"

# my cute OpenBSD fella
feh --no-fehbg --bg-max ~/Pictures/bsd-wallpapers/peaxpx.jpg &

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# the only true window manager, also in the base
exec cwm
