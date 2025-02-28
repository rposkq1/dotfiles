#!/bin/sh
while true; do
   xsetroot -name "$( date +"%F %T %s " )"
   sleep 1s   # Update time every minute
done &
sleep 1
xset -b
unclutter --timeout 1 --jitter 1 --ignore-scrolling --fork --start-hidden
xbindkeys
setxkbmap -option caps:escape
#xrandr --output DisplayPort-0 --off --output DisplayPort-1 --mode 1920x1080 --pos 1024x0 --rotate normal --output DisplayPort-2 --off --output HDMI-A-0 --mode 1024x768 --pos 0x217 --rotate normal
exec dwm
