#!/bin/bash

# Install Sun Java 6 JDK
cd ~/Downloads
mkdir tmp
cd tmp
wget https://raw.github.com/flexiondotorg/oab-java6/master/oab-java6.sh -O oab-java6.sh
chmod +x oab-java6.sh
sudo ./oab-java6.sh
sudo apt-get install sun-java6-jdk -y


