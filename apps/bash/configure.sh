echo "configuring bash ..."

ln -sf $DOTFILES/apps/bash/bash_profile $HOME/.bash_profile
ln -sf $DOTFILES/apps/bash/bashrc $HOME/.bashrc

echo "syncing bash history.."
ln -sf ~/Dropbox/workspace/.bash_history ~/.bash_history