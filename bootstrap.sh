#!/bin/bash
set -e

dotfiles_dir=$(dirname $(realpath $0)) # path where the current script is located

echo "Which is the present system (macos/linux)?"
read -e system

cd $dotfiles_dir/$system/

#configure the system environment
bash configure.sh

#install necessary apps
bash install_apps.sh

cd $OLDPWD

#find individual installers inside dotfiles and run them iteratively
find $dotfiles_dir -name install.sh | while read installer ; do /bin/bash "${installer}" ; done

echo "set up bash preferences."
ln -sf $dotfiles_dir/bash/bash_profile ~/.bash_profile

echo "set up git preferences."
ln -sf $dotfiles_dir/git/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/git/gitignore ~/.gitignore

echo "set up vim preferences."
ln -sf $dotfiles_dir/vim/vimrc ~/.vimrc

echo "set up powerline config."
ln -sf $dotfiles_dir/powerline/powerline-shell.json ~/.powerline-shell.json



