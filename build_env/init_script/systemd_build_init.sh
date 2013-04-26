#!/bin/bash

# Start home directory
cd ~

# necessary package
sudo apt-get update -y
sudo apt-get upgrade -y

# necessary package
sudo apt-get install docbook-xsl xsltproc automake autoconf libtool \
		     intltool gperf libcap-dev libdbus-1-dev libgcrypt11-dev \
			 libglib2.0-dev libpython2.7 libattr1-dev libcryptsetup-dev liblzma-dev -y
