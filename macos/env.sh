# brew
# Ensure coreutils and brew-installed binaries take precedence. Also ensure user-level binaries are present in the path.
export PATH="/Users/abhishek/.local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'