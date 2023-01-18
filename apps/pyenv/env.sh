export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# add pyenv init to the shell. Make sure that this is placed toward the end of the shell configuration file 
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"