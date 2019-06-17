echo "configuring zsh ..."

ln -sf $DOTFILES/zsh/zshrc $HOME/.zshrc

# install the pure zsh prompt, https://github.com/sindresorhus/pure
npm install --global pure-prompt