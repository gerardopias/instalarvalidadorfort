#!/bin/bash

WORKING_DIR=/vagrant/fort-install

sudo chown -R vagrant:vagrant /vagrant/
# sincro de relojes
apt-get install -y ntp
timedatectl set-ntp true

mkdir $WORKING_DIR
cd $WORKING_DIR

# Updating repository
	sudo apt-get update -y

########### normal dependencies ###########
# autoconf 2.69 or higher, please.
sudo apt-get install autoconf build-essential libjansson-dev libssl-dev pkg-config rsync unzip -y

############### libcmscodec ###############
mkdir libcmscodec
cd libcmscodec/
wget https://github.com/NICMx/libcmscodec/releases/download/beta2/libcmscodec-beta2.tar.gz
tar xvzf libcmscodec-beta2.tar.gz
cd libcmscodec-beta2/
./configure
make
sudo make install
sudo ldconfig
cd ../../

################## fort ###################
mkdir fort
cd fort/
wget https://github.com/NICMx/FORT-validator/archive/master.zip
# tar xvzf fort-0.0.1.tar.gz
unzip master.zip
cd FORT-validator-master/
./autogen.sh
./configure
make
sudo make install
cd ../../

#Place your .tal files in ~/fort/tal:
#mkdir $WORKING_DIR/tal