FILES=$(shell ls -a | grep -e '\.\w' | grep -v '.git$$') 

test:
	@for file in $(FILES); do \
	echo $$file;\
	done

install:
	@for file in  $(FILES); \
    	do \
	ln -s ./$$file  ~/file; \
	done

install_fonts:
	wget https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf -O ~/Library/Fonts/meslo.ttf
