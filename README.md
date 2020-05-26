# Dotfiles
These are my graphical dotfiles, cli dotfiles are at [miuon/dots](https://github.com/miuon/dots). To set up a graphical system I use both repos. This also contains color schemes, within the themes directory. These should sit alongside the main dotfiles. No guarantees that they'll be kept completely up to date with the main files.

## System details
+ **OS**: Arch
+ **WM**: [airblader/i3](https://github.com/airblader/i3)
+ **Extras**: [rofi](https://github.com/davatorium/rofi), [polybar](https://github.com/polybar/polybar), [dunst](https://github.com/dunst-project/dunst)
+ **Terminal**: [rxvt-unicode-pixbuf](https://aur.archlinux.org/packages/rxvt-unicode-pixbuf)
+ **Browser**: [qutebrowser](https://github.com/qutebrowser/qutebrowser)

## Screenshots
Coming later

## Build rules
This repo is meant to be deployed using [GNU Make](https://gnu.org/software/make). For example, cd into the root and run `make i3` to deploy my i3 config.

| Rule Name | Description | Dependencies |
| --- | --- | --- |
| `i3` | My i3 config, for i3-gaps (airblader/i3). | `airblader/i3` `nerd-fonts-complete` `polybar` `rofi` `dunst` |
| `x` | General xorg config, sets up launch through xinit and configures xrdb variables. Configures some amount of rxvt stuff as well. | `xrdb` `xinit` |
| `polybar` | Config for polybar. Uses modules for my setup but can be reconfigured. | `polybar` |
| `rofi` | Config for rofi. Multiple rofis, multiple themes. | `rofi` `xrdb` `paper-icons` |
| `dunst` | Config for dunst notifications. | `dunst` |

## Config design

### i3
Contained within `wm/i3`. Split up into several files which can be overridden. Runs a config generator script on reconfigure and restart. If `~/bin` exists and is on the path, the script can be run manually as `i3confgen`.
