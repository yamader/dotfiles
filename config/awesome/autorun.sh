#!/bin/sh

(sleep 3; gentoo-pipewire-launcher)&
xss-lock xsecurelock &

fcitx5 -rd
picom -b #--legacy-backends
