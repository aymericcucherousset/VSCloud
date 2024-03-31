ZSH_THEME="robbyrussell"

export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
    fzf
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
)

alias gcm="git checkout main; git pull"
alias gs="git status"
