#!/bin/bash

# Check if wget is installed
if ! command -v wget &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y wget
fi

# Download and install Hugo
HUGO_VERSION=0.85.0
HUGO_DOWNLOAD_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb"
HUGO_DEB="hugo_${HUGO_VERSION}_Linux-64bit.deb"

wget "$HUGO_DOWNLOAD_URL"
sudo dpkg -i "$HUGO_DEB"

# Clean up downloaded .deb file
rm "$HUGO_DEB"
