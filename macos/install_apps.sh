#!/bin/bash
set -e

echo "Installing brew..."
bash homebrew.sh

echo "Installing apps via brew bundle..."
brew bundle


