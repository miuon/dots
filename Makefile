lovelace: ## Old work colors
	ln -vsf ${PWD}/color-lovelace/.xcolors ${HOME}/.xcolors
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/color-lovelace/.config/rofi/dracula.rasi ${HOME}/.config/rofi/dracula.rasi
	xrdb ${HOME}/.Xresources

night: ## Current home desktop colors
	ln -vsf ${PWD}/color-night/.xcolors ${HOME}/.xcolors
	xrdb ${HOME}/.Xresources

oheight: ## New work desktop colors (oc)
	ln -vsf ${PWD}/color-oheight/.xcolors ${HOME}/.xcolors
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/color-oheight/.config/rofi/dracula.rasi ${HOME}/.config/rofi/dracula.rasi
	xrdb ${HOME}/.Xresources

deploy-cwm: ## CWM window manager config
	ln -vsf ${PWD}/cwm/.cwmrc ${HOME}/.cwmrc

deploy-i3: ## Basic i3 config
	mkdir -p ${HOME}/.config/i3
	ln -vsf ${PWD}/i3/.config/i3/config ${HOME}/.config/i3/config

deploy-polybar: ## Polybar config, themed from Xresources
	mkdir -p ${HOME}/.config/polybar
	ln -vsf ${PWD}/polybar/.config/polybar/config ${HOME}/.config/polybar/config
	ln -vsf ${PWD}/polybar/.config/polybar/modules.ini ${HOME}/.config/polybar/modules.ini
	ln -vsf ${PWD}/polybar/.config/polybar/user_modules.ini ${HOME}/.config/polybar/user_modules.ini
	ln -vsf ${PWD}/polybar/.config/polybar/colors.ini ${HOME}/.config/polybar/colors.ini
	ln -vsf ${PWD}/polybar/.config/polybar/scripts ${HOME}/.config/polybar/scripts

deploy-rofi: ## Rofi config, needs theme set
	mkdir -p ${HOME}/.config/rofi
	ln -vsf ${PWD}/rofi/.config/rofi/config.rasi ${HOME}/.config/rofi/config.rasi

deploy-x: ## Basic X configuration
	ln -vsf ${PWD}/x/.xserverrc ${HOME}/.xserverrc
	ln -vsf ${PWD}/x/.xinitrc ${HOME}/.xinitrc
	ln -vsf ${PWD}/x/.Xresources ${HOME}/.Xresources
	xrdb ${HOME}/.Xresources
