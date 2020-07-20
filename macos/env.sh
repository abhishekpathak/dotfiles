# brew
# Ensure coreutils and brew-installed binaries take precedence
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home/"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# nvm
mkdir -p $HOME/.nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# add kitty binary to PATH
export PATH="/Applications/kitty.app/Contents/MacOS/:$PATH"

# add doom command to $PATH
export PATH="$HOME/.emacs.d/bin:$PATH"