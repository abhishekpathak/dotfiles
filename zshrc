#configs
HISTFILE=~/shell_history
HISTSIZE=10000
SAVEHIST=100000
setopt append_history sharehistory histignorealldups

#aliases
alias uncd="cd $OLDPWD"
alias vpn='sudo vpnc Ibibo_VPN_NM_tradus.conf --enable-1des'
alias 100='ssh -p 27000 goibibo@10.70.16.100'
alias 165='ssh -p 27000 goibibo@10.70.16.165'
alias 166='ssh -p 27000 goibibo@10.70.16.166'
alias 168='ssh -p 27000 goibibo@10.70.16.168'
alias 154='ssh -p 27000 goibibo@10.70.16.154'
alias 147='ssh -p 27000 goibibo@10.70.16.147'
alias 185='ssh -p 27000 goibibo@10.70.16.185'
alias 186='ssh -p 27000 goibibo@10.70.16.186'
alias 187='ssh -p 27000 goibibo@10.70.16.187'
alias 189='ssh -p 27000 goibibo@10.70.16.189'
alias 113='ssh abhishek@10.80.3.113'
alias server='python ~/travelibibo/manage.py runserver'
alias ti='cd /home/abhishek/source/travelibibo'
alias ls='ls -lh'
alias sl='ls -lh'
#prompt tweaks
autoload -Uz promptinit
promptinit
prompt redhat

#Zsh completion goodness!
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

setopt CORRECT

export JAVA_HOME=/usr/lib/jvm/java-7-oracle
#export PATH=/usr/bin
#source /home/abhishek/goibibo/bin/activate
#export HADOOP_HOME=/home/abhishek/workspace/hadoop
#export PATH=$PATH:$HADOOP_HOME/bin
export GOPATH=$HOME/source/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin
