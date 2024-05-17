#!/bin/sh

gentoo-pipewire-launcher restart &
xss-lock xsecurelock &

fcitx5 -rd
picom -b #--legacy-backends

#xinput set-prop bcm5974 "libinput Tapping Enabled" 1
