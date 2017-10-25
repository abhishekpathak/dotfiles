# Ensure coreutils and brew-installed binaries take precedence
PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'