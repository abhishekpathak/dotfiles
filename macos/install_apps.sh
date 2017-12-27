#!/bin/bash
set -e

current_dir=$(pwd)

echo "Installing brew..."
bash homebrew.sh

echo "Installing apps via brew bundle..."
brew bundle


