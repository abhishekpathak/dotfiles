alias gs='git status'
alias ga='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gpull='git pull'
alias gpush='git push'
alias gl='git log'
alias gco='git checkout'
alias gd='git diff'
alias gshow='git show'
alias gshowf='git show --name-status'


git_prune_gone_branches() {
    actually_delete="$1"
    git fetch -p
    branches=$(git branch -av | grep gone | awk '{ print $1 }')
    echo -e "Gone branches:\n\n$branches"
    if [[ "$actually_delete" == "--delete" ]] ; then echo "Deleting..." ; echo $branches | xargs -L 1 git branch -D ; else echo "\n\nThis was a dry run. Use --delete to remove these branches." ; fi
}

# start scmpuff (https://github.com/mroth/scmpuff)
# eval "$(scmpuff init -s)"