#!/bin/bash

# Check bin directory
if [ ! -d "$HOME/bin" ]; then
	mkdir ~/bin
fi

# install sublile text 2
if [ ! -d "$HOME/bin/subline_text_2" ]; then
	echo "Install subline text 2"
	cd ~/Downloads
	mkdir tmp
	cd tmp
	wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202%20Build%202181%20x64.tar.bz2
	tar xvf Sublime\ Text\ 2\ Build\ 2181\ x64.tar.bz2
	mv Sublime\ Text\ 2 subline_text_2
	mv subline_text_2 ~/bin
	cd ~
	echo "PATH=$PATH:$HOME/bin/subline_text_2" >> .bashrc
	source .bashrc
fi

