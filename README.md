# My Hyprland configuration files
![Hyprland on Arch screenshot as of 28 October 2025](https://fusion809.github.io/images/Hyprland/Hyprland_2025-10-28.png)

**Figure 1: Hyprland Arch Linux configuration as of 28 October 2025.**

This repository contains my [Hyprland](https://wiki.archlinux.org/title/Hyprland) configuration files. 

# Installation
To install these scripts, run the `install.sh` script. It merely gets the repo, sets up appropriate symlinks and installs some required packages. 

# Waybar
The waybar has the following components:
<!--* The Arch menu which gives you options for opening up the AUR, ArchWiki, and editing  your Hyprland config files.-->
* Workspaces.
* Weather conditions, obtained by wttr.in. Beware that wttr.in can be quite unreliable at times.
* Wallpaper number widget: it displays the number of the wallpaper most recently displayed on your desktop, then a forward slash, and then the total number of wallpapers you have installed on your system.
* A left arrow that, when clicked, changes your wallpaper to the previous one in your collection (keeping in mind, this is when you're using the systematic algorithm for the wallpaper script).
* A shuffling arrow that, when clicked, changes your wallpaper to a randomly selected one.
* A forward arrow that, when clicked, changes your wallpaper to the next systematically selected one. 
* The title of your currently focused window.
* Pulseaudio showing the volume of your output audio device.
* Used spaced on your root file system.
* Internet download/upload speed on enp24s0 interface.
* CPU usage percentage.
* RAM usage percentage.
* Keyboard layout (just the two-letter initial though). 
* Temperature according to sensors.
* Clock with AM/PM time with seconds, short day of the week name, day of the month/month of the year/year (short format). 
* Updates, only shown when they are available. Will list how many (courtesy of [waybar-module-pacman-updates](https://github.com/coffebar/waybar-module-pacman-updates)) are available.
* A menu that gives logout, shutdown, reboot, hibernate and suspend options.

# Chrome notifications, how to prevent them take up a whole window
I found that to avoid Google Chrome notifications taking up their own window and instead being displayed as a popup in the right-hand top corner of the screen, one needs to install GNOME but can then remove all the packages listed in `rmed-gnome-packages.txt`.

# Wallpaper script
There is a script within this repository called `wallpaper` that will, using swaybg, set your background to a wallpaper in `/usr/share/wallpapers`, `/usr/share/backgrounds`, `~/.local/share/backgrounds`, `~/.local/share/wallpapers` or `~/Pictures/Wallpapers`. I originally used hyprpaper to set the wallpaper, I find hyprpaper more difficult to use and I also use the wallpaper script under Niri. 

## Syntax

```bash
wallpaper <algorithm> [direction]
```

The algorithm argument is mandatory; the direction argument is optional. The algorithm argument decides which algorithm is used to decide the wallpaper set as your background. If you give it the argument `random` (first letter's case doesn't matter), you will get a randomly decided wallpaper out of those within those specified directories. If you give it the argument `systematic` (first letter's case also doesn't matter), wallpaper will systematically go through the wallpapers one by one. The direction argument can be "previous" or something else. If it is previous and the first argument is "systematic", this will lead to the previous wallpaper being shown. Otherwise the next wallpaper will be shown. This is also the default behaviour if direction is omitted.

# Keyboard shortcuts
| Keyboard combination                                              | Action                |
|-------------------------------------------------------------------|-----------------------|
| <kbd>h</kbd>                                                      | Resize window (only in resize mode) to the left. | 
| <kbd>l</kbd>                                                      | Resize window (only in resize mode) to the right. | 
| <kbd>k</kbd>                                                      | Resize window (only in resize mode) down. | 
| <kbd>j</kbd>                                                      | Resize window (only in resize mode) up. | 
| <kbd>Left</kbd>                                                   | Resize window (only in resize mode) to the left. | 
| <kbd>Right</kbd>                                                  | Resize window (only in resize mode) to the right. | 
| <kbd>Down</kbd>                                                   | Resize window (only in resize mode) down. | 
| <kbd>Up</kbd>                                                     | Resize window (only in resize mode) up. | 
| <kbd>F1</kbd>                                                     | Open workspace #1     |
| <kbd>Win</kbd>+<kbd>2</kbd>                                       | Open workspace #2     |
| <kbd>F3</kbd>                                                     | Open workspace #3     |
| <kbd>F4</kbd>                                                     | Open workspace #4     |
| <kbd>F5</kbd>                                                     | Open workspace #5     |
| <kbd>F6</kbd>                                                     | Open workspace #6     |
| <kbd>F7</kbd>                                                     | Open workspace #7     |
| <kbd>F8</kbd>                                                     | Open workspace #8     |
| <kbd>F9</kbd>                                                     | Open workspace #9     |
| <kbd>F10</kbd>                                                    | Open workspace #10    |
| <kbd>F11</kbd>                                                    | Open workspace of Google Chrome.  |
| <kbd>F12</kbd>                                                    | Open workspace of Nautilus        
| <kbd>Print</kbd>                                                  | Take a screenshot and copy it to clipboard. | 
| <kbd>Win</kbd>+<kbd>F1</kbd>                                      | Open workspace #11    |
| <kbd>Win</kbd>+<kbd>F2</kbd>                                      | Open workspace #12    |
| <kbd>Win</kbd>+<kbd>F3</kbd>                                      | Open workspace #13    |
| <kbd>Win</kbd>+<kbd>F4</kbd>                                      | Open workspace #14    |
| <kbd>Win</kbd>+<kbd>F5</kbd>                                      | Open workspace #15    |
| <kbd>Win</kbd>+<kbd>F6</kbd>                                      | Open workspace #16    |
| <kbd>Win</kbd>+<kbd>F7</kbd>                                      | Open workspace #17    |
| <kbd>Win</kbd>+<kbd>F8</kbd>                                      | Open workspace #18    |
| <kbd>Win</kbd>+<kbd>F9</kbd>                                      | Open workspace #19    |
| <kbd>Win</kbd>+<kbd>F10</kbd>                                     | Open workspace #20    |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>1</kbd>                      | Move focused window (silently) to workspace #1     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>2</kbd>                      | Move focused window (silently) to workspace #2     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>3</kbd>                      | Move focused window (silently) to workspace #3     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>4</kbd>                      | Move focused window (silently) to workspace #4     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>5</kbd>                      | Move focused window (silently) to workspace #5     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>6</kbd>                      | Move focused window (silently) to workspace #6     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>7</kbd>                      | Move focused window (silently) to workspace #7     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>8</kbd>                      | Move focused window (silently) to workspace #8     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>9</kbd>                      | Move focused window (silently) to workspace #9     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>0</kbd>                      | Move focused window (silently) to workspace #10    |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F1</kbd>                     | Move focused window (silently) to workspace #11     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F2</kbd>                     | Move focused window (silently) to workspace #12     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F3</kbd>                     | Move focused window (silently) to workspace #13     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F4</kbd>                     | Move focused window (silently) to workspace #14     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F5</kbd>                     | Move focused window (silently) to workspace #15     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F6</kbd>                     | Move focused window (silently) to workspace #16     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F7</kbd>                     | Move focused window (silently) to workspace #17     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F8</kbd>                     | Move focused window (silently) to workspace #18     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F9</kbd>                     | Move focused window (silently) to workspace #19     |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>F10</kbd>                    | Move focused window (silently) to workspace #20    |
| <kbd>Win</kbd>+<kbd>a</kbd>                                       | Expand out of tabbed mode |  
| <kbd>Win</kbd>+<kbd>b</kbd>                                       | Open Brave. |
| <kbd>Win</kbd>+<kbd>c</kbd>                                       | Open Google Chat Chrome app |
| <kbd>Win</kbd>+<kbd>d</kbd>                                       | Open rofi dmenu            |
| <kbd>Win</kbd>+<kbd>m</kbd>                                       | Open WhatsApp web |
| <kbd>Win</kbd>+<kbd>f</kbd>                                       | Set window to full screen. | 
| <kbd>Win</kbd>+<kbd>g</kbd>                                       | Launch gtop in Alacritty. |
| <kbd>Win</kbd>+<kbd>h</kbd>                                       | Launch hyfetch in kitty. |
| <kbd>Win</kbd>+<kbd>k</kbd>                                       | Open kitty terminal. |
| <kbd>Win</kbd>+<kbd>o</kbd>                                       | Open RuneScape. |
| <kbd>Win</kbd>+<kbd>p</kbd>                                       | Open Nautilus. | 
| <kbd>Win</kbd>+<kbd>q</kbd>                                       | Close current window. |
| <kbd>Win</kbd>+<kbd>s</kbd>                                       | Change wallpaper to a randomly selected one. |
| <kbd>Win</kbd>+<kbd>t</kbd>                                       | Enter tabbed mode.         |
| <kbd>Win</kbd>+<kbd>v</kbd>                                       | Open VirtualBox. |
| <kbd>Win</kbd>+<kbd>w</kbd>                                       | Set wallpaper to the one after the current one specified in `$HOME/.cache/swaybg-wallstate` |
| <kbd>Win</kbd>+<kbd>z</kbd>                                       | Set wallpaper to the one before the current one specified in `$HOME/.cache/swaybg-wallstate` |
| <kbd>Win</kbd>+<kbd>Left</kbd>                                    | Move focus left. |
| <kbd>Win</kbd>+<kbd>Right</kbd>                                   | Move focus right. |
| <kbd>Win</kbd>+<kbd>Down</kbd>                                    | Move focus down. |
| <kbd>Win</kbd>+<kbd>Up</kbd>                                      | Move focus up. |
| <kbd>Win</kbd>+<kbd>Space</kbd>                                   | Change keyboard (between US and Brazilian Portuguese). |
| <kbd>Win</kbd>+<kbd>Tab</kbd>                                     | Open Alacritty terminal. |
| <kbd>Win</kbd>+<kbd>Return</kbd>                                  | Open Alacritty terminal. |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>b</kbd>                      | Open bluetooth manager |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>e</kbd>                      | Exit Hyprland. |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>f</kbd>                      | Open Facebook Chrome app |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>i</kbd>                      | Open Instagram Chrome app |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>j</kbd>                      | Move window left (not including tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>k</kbd>                      | Move window down (not including tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>l</kbd>                      | Move window up (not including tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd>                      | Poweroff OS. |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>q</kbd>                      | Open Quora Chrome app |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd>                      | Enter window resizing mode. | 
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>w</kbd>                      | Open windows list in rofi |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>;</kbd>                      | Move window right (not including tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Left</kbd>                   | Move window left (tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Down</kbd>                   | Move window down (tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Up</kbd>                     | Move window up (tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Right</kbd>                  | Move window right (tabbed windows). |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Return</kbd>                 | Open workspace of Alacritty terminal. |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Space</kbd>                  | Toggle float of focused window. | 
