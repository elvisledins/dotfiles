xrdb ~/.Xresources
xrandr --output HDMI-1 --left-of DP-2
setxkbmap -layout us,lv -variant ,apostrophe -option 'grp:win_space_toggle'
wacomStylus=$(xsetwacom list devices |
		grep stylus |
		grep -Eo "[0-9]{2}")
xsetwacom set $wacomStylus MapToOutput 2560x1080+1920+0
xsetwacom set $wacomStylus Area 4750 0 14630 4750

source ~/.bashrc
compton -cCGfF -b --config ~/.config/compton.conf
awesome
