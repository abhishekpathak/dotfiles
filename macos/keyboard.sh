#!/bin/bash
set -e

echo "Disable press-and-hold for keys in favor of key repeat."
defaults write -g ApplePressAndHoldEnabled -bool false

echo "Set a really fast key repeat."
defaults write NSGlobalDomain KeyRepeat -int 5