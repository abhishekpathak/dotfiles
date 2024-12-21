# For direnv to work properly it needs to be hooked into the shell.
eval "$(direnv hook zsh)"
# make `direnv` silent
# export DIRENV_LOG_FORMAT=
# tell direnv to display these messages in a “faint” color
export DIRENV_LOG_FORMAT=$'\033[2mdirenv: %s\033[0m'