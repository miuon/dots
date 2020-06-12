lovelace: ## Old work colors
	ln -vsf ${PWD}/colors-old/lovelace/.xcolors ${HOME}/.xcolors
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/colors-old/lovelace/dracula.rasi ${HOME}/.config/rofi/dracula.rasi
	xrdb ${HOME}/.Xresources

night: ## Current home desktop colors
	ln -vsf ${PWD}/colors-old/night/.xcolors ${HOME}/.xcolors
	xrdb ${HOME}/.Xresources

polybar: ## Polybar config, themed from Xresources
	mkdir -p ${HOME}/.config/polybar
	ln -vsf ${PWD}/tools/polybar/config ${HOME}/.config/polybar/config
	ln -vsf ${PWD}/tools/polybar/modules.ini ${HOME}/.config/polybar/modules.ini
	ln -vsf ${PWD}/tools/polybar/user_modules.ini ${HOME}/.config/polybar/user_modules.ini
	ln -vsf ${PWD}/tools/polybar/colors.ini ${HOME}/.config/polybar/colors.ini
	ln -vsf ${PWD}/tools/polybar/scripts ${HOME}/.config/polybar/scripts

rofi: ## Rofi config, needs theme set
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/tools/rofi/config.rasi ${HOME}/.config/rofi/config.rasi

dunst: ## Dunst config, needs theme set
	mkdir -p ${HOME}/.config/dunst
	ln -vsf ${PWD}/tools/dunst/dunstrc ${HOME}/.config/dunst/dunstrc

x: ## Basic X configuration
	ln -vsf ${PWD}/wm/x/.xserverrc ${HOME}/.xserverrc
	ln -vsf ${PWD}/wm/x/.xinitrc ${HOME}/.xinitrc
	ln -vsf ${PWD}/wm/x/.xprofile ${HOME}/.xprofile
	ln -vsf ${PWD}/wm/x/.Xresources ${HOME}/.Xresources
	xrdb ${HOME}/.Xresources
