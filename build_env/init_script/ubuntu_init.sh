#!/bin/bash

# Start home directory
cd ~

# update & upgrade synaptic package
sudo apt-get update -y
sudo apt-get upgrade -y

# necessary package
sudo apt-get install tree vim ccache git-core build-essential ctags cscope xmlto -y

