#!/bin/bash
xrandr --output DP-0 --mode 2560x1440 --rate 165
xinput set-prop "Logitech USB Receiver" "libinput Accel Profile Enabled" 0 1 0
xinput set-prop "Kensington ORBIT WIRELESS TB Consumer Control" "libinput Accel Profile Enabled" 0 1 0
setxkbmap -layout us,br
setxkbmap -option 'grp:ctrl_space_toggle'
flameshot &
/usr/lib/xdg-desktop-portal-gtk &
picom &
#polybar &
