#!/bin/bash

# Install Sun Java 6 JDK
cd ~/Downloads
mkdir tmp
cd tmp
#wget https://raw.github.com/flexiondotorg/oab-java6/master/oab-java6.sh -O oab-java6.sh
wget https://raw.github.com/flexiondotorg/oab-java6/master/oab-java.sh
chmod +x oab-java.sh
sudo ./oab-java.sh
sudo apt-get install sun-java6-jdk -y

sudo update-alternatives --config java
