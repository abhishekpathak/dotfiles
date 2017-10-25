#!/bin/bash
set -e

echo "Use list view in all Finder windows by default."
defaults write com.apple.finder FXPreferredViewStyle -string '"Nlsv"'

echo "Show the ~/Library folder."
chflags nohidden ~/Library

echo "Show the /Volumes folder."
sudo chflags nohidden /Volumes

echo "Show hidden files (whose name starts with dot) in finder."
defaults write com.apple.finder AppleShowAllFiles -int 1

echo "Show full file path in finder windows."
defaults write _FXShowPosixPathInTitle com.apple.finder -int 1
defaults write com.apple.finder ShowPathbar -bool true

echo "Don't write DS_Store files to network shares or USB drives."
defaults write DSDontWriteNetworkStores com.apple.desktopservices -int 1
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Don't ask to use external drives as a Time Machine backup."
defaults write DoNotOfferNewDisksForBackup com.apple.TimeMachine -int 1

echo "When performing a search, search the current folder by default."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Expand save panel by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true