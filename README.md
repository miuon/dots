# Dotfiles
These are my graphical dotfiles, cli dotfiles are at [miuon/dots](https://github.com/miuon/dots). To set up a graphical system I use both repos. This also contains color schemes, within the themes directory. These should sit alongside the main dotfiles. No guarantees that they'll be kept completely up to date with the main files.

## System details
+ **OS**: Arch, maybe OpenBSD in the future
+ **DE**: [xinit](https://wiki.archlinux.com/index.php/xinit), use it for most autostart as well
+ **WM**: [resloved/i3](https://github.com/resloved/i3)
+ **Extras**: [rofi](https://github.com/davatorium/rofi), [polybar](https://github.com/polybar/polybar), [dunst](https://github.com/dunst-project/dunst)
+ **Terminal**: [rxvt-unicode-pixbuf](https://aur.archlinux.org/packages/rxvt-unicode-pixbuf)
+ **Browser**: [qutebrowser](https://github.com/qutebrowser/qutebrowser)

## Screenshots
Coming later

## Make layout
This repo is meant to be deployed using [GNU Make](https://gnu.org/software/make). For example, cd into the root and run `make i3` to deploy my i3 config. Themes are within the themes directory, and each have their own make rule. For example, deploy the "oheight" theme using `make oheight`.

| Package Name | Description | Dependencies |
| --- | --- | --- |
| `x` | General xorg config, sets up launch through xinit and configures xrdb variables. Configures some amount of rxvt stuff as well. | `neovim` `vim-plug` `pynvim` |
| `i3` | My i3 config, for i3-gaps-rounded (resloved/i3). | `resloved/i3` `rofi` `nerd-fonts-complete` |

## Color directories
In theory you can use these to deploy different color schemes using stow, and the other config files will all source them correctly. In practice, we'll see how that goes. If you've deployed one color scheme and want to try another you may have to run it first, get the overwrite error, and then go in and delete some of the stuff that's there already.

| Colorscheme | Screenshot (to be added later) | Description | Configures |
| --- | --- | --- | --- |
| color-night | | For the moment this will just be the dumping ground for what I've hobbled together | `rxvt` |
