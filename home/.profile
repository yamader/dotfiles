# https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland
#export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export QT_IM_MODULES="wayland;fcitx;ibus"
export XMODIFIERS=@im=fcitx

gnome-keyring-daemon -s
