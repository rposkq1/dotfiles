#!/bin/sh
#statusbar
#RND=$(openssl rand -hex 8)
#while xsetroot -name "$(echo "$RND  $(date +"%F %T %s") $DNI $PWD $HOSTNAME ")";do
#    DNI=$(echo "scale=5; (1750959000 - $(date +%s)) / 60 / 60 / 24" | bc)
#    if (( $(date +%s) % 60 == 0 )); then
#        RND=$(openssl rand -hex 8)
#    fi
#    sleep 1s
#done &
touch /tmp/.RND && chmod 600 /tmp/.RND
openssl rand -hex 8 > /tmp/.RND
slstatus &

unclutter --timeout 1 --jitter 1 --ignore-scrolling --fork --start-hidden
xbindkeys
setxkbmap -option caps:escape
#xrandr --output DisplayPort-0 --off --output DisplayPort-1 --mode 1920x1080 --pos 1024x0 --rotate normal --output DisplayPort-2 --off --output HDMI-A-0 --mode 1024x768 --pos 0x217 --rotate normal
exec dwm
