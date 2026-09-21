#!/bin/bash
set -e

export WORKSPACE=$HOME/Documents/Workspace
export XDG_CONFIG_HOME=$HOME/.config
export STORE=$WORKSPACE/store
export PERSONALPROJECTS=$WORKSPACE/personal-projects
export DOTFILES=$PERSONALPROJECTS/dotfiles

# echo "Which is the present OS (macos/ubuntu)?"
# read -e system
system="macos"

# configure the system 
# 1. install applications
# 2. configure os-level preferences
source $DOTFILES/$system/configure.sh

# symlink bundled system-specifc env file to ~/.env-system.sh
ln -sf $DOTFILES/$system/env.sh $HOME/.env-system.sh

# configure app-level preferences
find $DOTFILES/apps -name configure.sh | while read config ; do /bin/bash "${config}" ; done

echo "done."