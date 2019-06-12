#!/bin/bash

wget https://www.dropbox.com/s/dbdhn4yd9m3nnct/libcmscodec1_0.0.1-1_amd64.deb
wget https://www.dropbox.com/s/7c0rs49ewcu6m93/fort_0.0.1-1_amd64.deb
sudo apt install ./libcmscodec1_0.0.1-1_amd64.deb ./fort_0.0.1-1_amd64.deb -y

sudo cp config.json /etc/fort/
