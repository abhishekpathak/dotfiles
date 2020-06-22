#!/bin/bash
set -e

sudo apt update

sudo apt install -y zsh
sudo apt install -y wget
sudo apt install -y vim
sudo apt install -y git
sudo apt install -y golang
sudo apt install -y tree
sudo apt install -y autojump
sudo apt install -y vlc
sudo apt install -y snapd
sudo apt install -y emacs
sudo apt install -y kitty
sudo apt install -y plexmediaserver

sudo apt -y autoremove


echo "
############### please install the following manually ###############################
 # java
 # intellij
 # dropbox
 # google backup and sync
 # evernote
 "
