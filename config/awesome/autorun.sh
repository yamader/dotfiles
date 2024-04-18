#!/bin/sh

gentoo-pipewire-launcher &
xss-lock xsecurelock &

fcitx5 -rd
picom -b
