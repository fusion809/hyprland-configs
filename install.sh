#!/usr/bin/env bash
if ! [[ -d $HOME/GitHub/mine/config/hyprland-configs ]]; then
	pushd $HOME/GitHub/mine/config
	git clone https://github.com/fusion809/hyprland-configs
	popd
fi
./setup-symlinks.sh
yay -S alacritty kitty hyprland waybar bluetoothctl nautilus google-chrome steam rofi swaybg gvim-gtk2 wttrbar wl-clipboard cmake meson cpio pkg-config git blueman-manager marked hyfetch gtop clipman --noconfirm --needed
hyprpm add https://github.com/outfoxxed/hy3
hyprpm update
