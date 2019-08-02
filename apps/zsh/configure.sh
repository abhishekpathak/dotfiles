set -e

echo "configuring zsh ..."

ln -sf $DOTFILES/apps/zsh/zshrc $HOME/.zshrc

# install the pure zsh prompt, https://github.com/sindresorhus/pure, added as a submodule to $DOTFILES/apps/zsh
#fpath=/usr/local/share/zsh/site-functions
#sudo ln -sf $DOTFILES/apps/zsh/plugins/pure/pure.zsh $fpath/prompt_pure_setup
#sudo ln -sf $DOTFILES/apps/zsh/plugins/pure/async.zsh $fpath/async

echo "execute this manually: chsh -s $(which zsh) "
echo "and then logout and log back in to set zsh as the default shell."