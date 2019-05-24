#!/bin/bash
set -e

dotfiles_dir=$(pwd) # path where the current script is located

echo "Which is the present OS (macos/ubuntu)?"
read -e system

#configure the system environment
bash $dotfiles_dir/$system/configure.sh

#install necessary apps
bash $dotfiles_dir/$system/install_apps.sh

#find individual installers inside dotfiles and run them iteratively
find $dotfiles_dir -name install.sh | while read installer ; do /bin/bash "${installer}" ; done

echo "set up bash preferences."
# bash sourcing order: bash_profile --> bashrc --> bashrc_dotfiles --> bashrc_dotfiles_extra"
ln -sf $dotfiles_dir/bash/bash_profile $HOME/.bash_profile
ln -sf $dotfiles_dir/bash/bashrc $HOME/.bashrc_dotfiles
ln -sf $dotfiles_dir/$system/bashrc_extra $HOME/.bashrc_dotfiles_extra #add os-specific bash config to the system
echo "source $HOME/.bashrc_dotfiles" >> $HOME/.bashrc

echo "set up git preferences."
ln -sf $dotfiles_dir/git/gitconfig $HOME/.gitconfig
ln -sf $dotfiles_dir/git/gitignore $HOME/.gitignore

echo "set up vim preferences."
ln -sf $dotfiles_dir/vim/vimrc $HOME/.vimrc

echo "set up powerline config."
source $HOME/.bashrc_dotfiles_extra
ln -sf $dotfiles_dir/powerline/colorscheme.json $POWERLINE_LIB/config_files/colorschemes/shell/default.json
ln -sf $dotfiles_dir/powerline/theme.json $POWERLINE_LIB/config_files/themes/shell/default.json

echo "done."


