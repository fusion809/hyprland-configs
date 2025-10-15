#!/usr/bin/env bash
if ! [[ -d $HOME/GitHub/mine/config/hyprland-configs ]]; then
	pushd $HOME/GitHub/mine/config
	git clone https://github.com/fusion809/hyprland-configs
	popd
fi
pushd $HOME/GitHub/mine/config/hyprland-configs
if ! [[ -d $HOME/.local/bin ]]; then
	mkdir -p $HOME/.local/bin
fi
ln -sf $PWD/bluetooth-connect ~/.local/bin/
ln -sf $PWD/focus-chrome ~/.local/bin/
ln -sf $PWD/focus-terminal ~/.local/bin/
ln -sf $PWD/focus-nautilus ~/.local/bin/
ln -sf $PWD/runescape ~/.local/bin/
ln -sf $PWD/screenshot ~/.local/bin/
ln -sf $PWD/wallpaper ~/.local/bin/
if ! [[ -d $HOME/.config/waybar ]]; then
	mkdir -p $HOME/.config/waybar
fi
ln -sf $PWD/arch_menu.xml ~/.config/waybar/
ln -sf $PWD/power_menu.xml ~/.config/waybar/
ln -sf $PWD/config.jsonc ~/.config/waybar/
ln -sf $PWD/style.css ~/.config/waybar/
if ! [[ -d $HOME/.config/hypr ]]; then
	mkdir -p $HOME/.config/hypr
fi
ln -sf $PWD/hyprland.conf ~/.config/hypr/
if ! [[ -d $HOME/.config/kitty ]]; then
	mkdir -p $HOME/.config/kitty
fi
ln -sf $PWD/kitty.conf ~/.config/kitty/
if ! [[ -d $HOME/.config/alacritty ]]; then
	mkdir -p $HOME/.config/alacritty
fi
ln -sf $PWD/alacritty.conf ~/.config/alacritty/
popd
yay -S alacritty kitty hyprland waybar bluetoothctl nautilus google-chrome steam rofi swaybg gvim-gtk2 wttrbar wl-clipboard --noconfirm --needed
