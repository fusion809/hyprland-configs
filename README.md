# My Hyprland configuration files
![Hyprland on Arch screenshot as of 14 October 2025](https://fusion809.github.io/images/Hyprland/Hyprland_2025-10-14.png)

**Figure 1: Hyprland Arch Linux configuration as of 13 October 2025.**

This repository contains my Hyprland configuration files. 

## Installation
To install these scripts, run the install.sh script. It merely gets the repo, sets up appropriate symlinks and installs some required packages. 

## Chrome notifications, how to prevent them take up a whole window
I found that to avoid Google Chrome notifications taking up their own window and instead being displayed as a popup in the right-hand top corner of the screen, one needs to install GNOME but can then remove all the packages listed in rmed-gnome-packages.txt.

## Wallpaper script
There is a script within this repository called "wallpaper" that will, using swaybg, set your background to a wallpaper in /usr/share/wallpapers, /usr/share/backgrounds, ~/.local/share/backgrounds, ~/.local/share/wallpapers or ~/Pictures/Wallpapers. `wallpaper` takes one option, which is mandatory. The argument decides which algorithm is used to decide the wallpaper set as your background. If you give it the argument `random`, you will get a randomly decided wallpaper out of those within those specified directories. If you give it the argument `systematic`, wallpaper will systematically go through the wallpapers one by one.  
