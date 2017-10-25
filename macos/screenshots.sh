#!/bin/bash
set -e

echo "Save screenshots in PNG format."
defaults write com.apple.screencapture type -string png

echo "Save screenshots to user screenshots directory instead of desktop."
mkdir -p ~/screenshots
defaults write com.apple.screencapture location -string ~/screenshots