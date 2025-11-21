set -e

echo "configuring zsh ..."

echo "syncing zsh configuration..."
if [ -f "$HOME/.zshrc" ]; then
    mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi
ln -sf "$DOTFILES/apps/zsh/zshrc" "$HOME/.zshrc"

echo "syncing zsh history.."
if [ -f "$HOME/.zsh_history" ]; then
    mv "$HOME/.zsh_history" "$HOME/.zsh_history.bak"
fi
rm -f $HOME/.zsh_history && ln -sf "$STORE/zsh_history" "$HOME/.zsh_history"

echo "execute this manually: chsh -s $(which zsh) "
echo "and then logout and log back in to set zsh as the default shell."