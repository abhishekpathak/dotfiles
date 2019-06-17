#!/bin/bash
set -e

sudo apt update

sudo apt install -y zsh
sudo apt install -y wget
sudo apt install -y python3-pip
sudo apt install -y vim
sudo apt install -y git
sudo apt install -y nodejs-dev node-gyp libssl1.0-dev npm
sudo apt install -y golang
sudo apt install -y python3
sudo apt install -y tree
sudo apt install -y autojump
sudo apt install -y maven
sudo apt install -y vlc
sudo apt install -y snapd

sudo snap install --classic code

sudo apt -y autoremove


echo "
############### please install the following manually ###############################
 # java
 # intellij
 # dropbox
 # google backup and sync
 # evernote
 "
