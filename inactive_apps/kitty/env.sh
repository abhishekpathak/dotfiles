# add kitty binary to PATH
export PATH="/Applications/kitty.app/Contents/MacOS/:$PATH"

# Completion for kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin