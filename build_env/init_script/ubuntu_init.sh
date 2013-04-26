#!/bin/bash

# Start home directory
cd ~

# update & upgrade synaptic package
sudo apt-get update -y
sudo apt-get upgrade -y

# necessary package
sudo apt-get install tree vim ccache git-core build-essential ctags cscope xmlto ssh tig \
		 -y

# android build
sudo apt-get install gnupg flex bison gperf build-essential \
	zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
	libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
	libgl1-mesa-dev g++-multilib mingw32 openjdk-6-jdk tofrodos \
	python-markdown libxml2-utils xsltproc zlib1g-dev:i386

sudo apt-get install xpad
