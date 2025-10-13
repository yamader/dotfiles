# dotfiles

- `/gentoo`は[yamader/gentoo-config](https://github.com/yamader/gentoo-config)に引越しました

## OpenRC

```fish
mkdir -p ~/.config/rc/runlevels/graphical
rc-update -U -s add default graphical
rc-update -U add xremap default
for i in dunst easyeffects fcitx5 foot kanshi pipewire-pulse wireplumber xdg-desktop-portal-wlr yaskkserv2
  rc-update -U add $i graphical
end
```
