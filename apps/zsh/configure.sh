set -e

echo "configuring zsh ..."

ln -sf $DOTFILES/apps/zsh/zshrc $HOME/.zshrc

echo "syncing zsh history.."
ln -sf ~/Dropbox/workspace/zsh_history ~/.zsh_history

echo "execute this manually: chsh -s $(which zsh) "
echo "and then logout and log back in to set zsh as the default shell."