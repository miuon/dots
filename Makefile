lovelace: ## Old work colors
	ln -vsf ${PWD}/colors/lovelace/.xcolors ${HOME}/.xcolors
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/colors/lovelace/dracula.rasi ${HOME}/.config/rofi/dracula.rasi
	xrdb ${HOME}/.Xresources

night: ## Current home desktop colors
	ln -vsf ${PWD}/colors/night/.xcolors ${HOME}/.xcolors
	xrdb ${HOME}/.Xresources

oheight: ## New work desktop colors (oc)
	ln -vsf ${PWD}/colors/oheight/.xcolors ${HOME}/.xcolors
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/colors/oheight/dracula.rasi ${HOME}/.config/rofi/dracula.rasi
	xrdb ${HOME}/.Xresources

i3: ## Basic i3 config
	mkdir -p ${HOME}/.config/i3
	ln -vsf ${PWD}/wm/i3/config ${HOME}/.config/i3/config

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

deploy-x: ## Basic X configuration
	ln -vsf ${PWD}/wm/x/.xserverrc ${HOME}/.xserverrc
	ln -vsf ${PWD}/wm/x/.xinitrc ${HOME}/.xinitrc
	ln -vsf ${PWD}/wm/x/.Xresources ${HOME}/.Xresources
	xrdb ${HOME}/.Xresources
