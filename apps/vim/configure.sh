echo "configuring vim ..."

ln -sf $DOTFILES/apps/vim/vimrc $HOME/.vimrc

echo "syncing vim history.."
ln -sf $WORKSPACE/viminfo ~/.viminfo