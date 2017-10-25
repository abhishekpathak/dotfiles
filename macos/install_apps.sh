#!/bin/bash
set -e

current_dir=$(dirname $(realpath $0))

echo "Installing brew..."
bash homebrew.sh

echo "Installing apps via brew bundle..."
brew bundle


