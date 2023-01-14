pulseaudio --start
picom -b
#xscreensaver --no-splash &
light-locker \
  --lock-on-suspend \
  --lock-on-lid &

xinput set-prop Elan\ Touchpad Device\ Enabled 0

( sleep 3; imon ) &
