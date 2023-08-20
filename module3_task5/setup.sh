#!/bin/bash

sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
sudo apt-get install -y wget make zip nodejs
wget https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.deb
sudo dpkg -i hugo_0.85.0_Linux-64bit.deb
npm install -g markdownlint-cli
