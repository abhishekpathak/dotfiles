#!/bin/bash
set -e

echo "Show full file path in finder status bar."
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