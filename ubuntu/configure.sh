#!/bin/bash
set -e

sudo apt update

sudo apt install -y zsh
sudo apt install -y vim
sudo apt install -y git
sudo apt install -y golang-go
sudo apt install -y tree
sudo apt install -y autojump
sudo apt install -y gnupg
sudo apt install -y cmake
sudo apt install -y build-essential
sudo apt install -y less
sudo apt install -y rsync
sudo apt install -y unzip
sudo apt install -y ripgrep
sudo apt install -y fd-find
sudo apt install -y direnv
sudo apt install -y fzf
sudo apt install -y shellcheck
sudo apt install -y gnutls-bin
sudo apt install -y zoxide
sudo apt -y autoremove


curl -sS https://starship.rs/install.sh | sh