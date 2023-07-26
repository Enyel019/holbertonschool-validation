#!/bin/bash

apt-get update
apt-get install -y wget
apt-get install -y make
wget https://github.com/gohugoio/hugo/releases/download/v0.115.4/hugo_0.115.4_Linux-64bit.deb
dpkg -i hugo_0.115.4_Linux-64bit.deb
make build
