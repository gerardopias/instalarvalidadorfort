#!/bin/bash

cd /vagrant/
wget https://github.com/NICMx/FORT-validator/releases/download/v0.0.2/fort_0.0.2-1_amd64.deb
sudo apt install ./fort_0.0.2-1_amd64.deb -y

sudo cp /vagrant/config.json /etc/fort/