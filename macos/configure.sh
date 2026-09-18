#!/bin/bash
set -e

# Check for brew installation, install if not found
if test ! $(which brew)
then
  echo "Installing Homebrew for you..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew seems to be already installed."
fi

BREWFILE=$DOTFILES/macos/Brewfile
echo "Installing apps listed in $BREWFILE..."
brew bundle --file=$BREWFILE

# suppress "Last login: ..." message on terminal startup
touch $HOME/.hushlogin


echo "Set up finder preferences..."
echo "Show full file path in finder status bar."
defaults write com.apple.finder ShowPathbar -bool true
echo "Show file extensions by default."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
echo "Show hidden files by default."
defaults write com.apple.finder AppleShowAllFiles -bool true
echo "Don't put folders above files when sorting by name."
defaults write com.apple.finder _FXSortFoldersFirst -bool true
echo "Show Library Folder by default."
chflags nohidden ~/Library
echo "Don't write DS_Store files to network shares or USB drives."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
echo "Don't ask to use external drives as a Time Machine backup."
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
echo "When performing a search, search the current folder by default."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
echo "Expand save panel by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
echo "default new windows to home folder instead of Recents."
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

echo "Set up keyboard preferences..."
echo "Disable press-and-hold for keys in favor of key repeat."
defaults write -g ApplePressAndHoldEnabled -bool false
echo "Set a really fast key repeat."
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 5

echo "Disable all types of annoying autocorrect behavior..."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

echo "Set up screenshots preferences..."
echo "Save screenshots in PNG format."
defaults write com.apple.screencapture type -string png
echo "Remove shadow from window screenshots."
defaults write com.apple.screencapture disable-shadow -bool true
echo "Save screenshots to user screenshots directory instead of desktop."
mkdir -p $WORKSPACE/screenshots
defaults write com.apple.screencapture location -string $WORKSPACE/screenshots

echo "Reload Finder and UI server to apply preferences."
killall Finder
killall SystemUIServer
