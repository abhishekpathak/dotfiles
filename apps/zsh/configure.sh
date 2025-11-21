set -e

echo "configuring zsh ..."

ln -sf $DOTFILES/apps/zsh/zshrc $HOME/.zshrc

echo "syncing zsh history.."
mv $HOME/.zsh_history $HOME/.zsh_history.bak && ln -sf $WORKSPACE/zsh_history $HOME/.zsh_history

echo "execute this manually: chsh -s $(which zsh) "
echo "and then logout and log back in to set zsh as the default shell."