# aliases
#alias ll='ls -lah --color'
alias ls='eza -aF --color=always --git'
alias ll='eza -laF --color=always --git --group-directories-first'
alias tree='eza -T --color=always --git-ignore --level=1'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
# alias hl='ssh admin@192.168.1.101 -t "tmux -CC attach || tmux -CC"' # homelab


# exports
export FZF_DEFAULT_OPTS="--height 40% --layout reverse --border"

