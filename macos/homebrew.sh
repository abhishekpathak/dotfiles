#!/bin/sh
set -e

# Check for existing installation
if test ! $(which brew)

then
  echo "Installing homebrew for you..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

else
  echo "Homebrew seems to be already installed."

fi