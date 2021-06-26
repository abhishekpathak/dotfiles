#!/bin/bash
set -e

# Check for brew installation, install if not found
if test ! $(which brew)
then
  echo "Installing Homebrew for you..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew seems to be already installed."
fi

BREWFILE=$DOTFILES/macos/Brewfile
echo "Installing apps listed in $BREWFILE..."
brew bundle --file=$BREWFILE

echo "
############### please install the following manually: ###############################
 # java
 "

echo "Set up finder preferences..."

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

echo "Set up keyboard preferences..."

echo "Disable press-and-hold for keys in favor of key repeat."
defaults write -g ApplePressAndHoldEnabled -bool false
echo "Set a really fast key repeat."
defaults write NSGlobalDomain KeyRepeat -int 5

echo "Set up privacy preferences..."

echo "Set up screenshots preferences..."

echo "Save screenshots in PNG format."
defaults write com.apple.screencapture type -string png
echo "Save screenshots to user screenshots directory instead of desktop."
mkdir -p $HOME/screenshots
defaults write com.apple.screencapture location -string $HOME/screenshots