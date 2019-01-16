FILES = $(shell ls -a | grep -e '\.\w' | grep -v '.git$$') 
DIR = $(shell pwd)

test:
	@for file in $(FILES); do \
	echo $$file;\
	done

install: install_fonts install_configs reload_zsh

install_configs:
	@for file in  $(FILES); \
    	do \
	echo "Linking $(DIR)/$$file -> ~/$$file"; \
	ln -fs $(DIR)/$$file  ~/$$file; \
	done

install_fonts:
	wget https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf -O ~/Library/Fonts/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf

reload_zsh:
	zsh ~/.zshrc	

install_ansible:
	ansible-playbook -i ansible/inventory/workstation ansible/provision_workstation.yml