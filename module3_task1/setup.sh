#!/bin/bash

# Install git if it's not installed
if ! command -v git &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y git
fi

# Install make if it's not installed
if ! command -v make &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y make
fi


