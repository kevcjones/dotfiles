export ZSH="~/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git vscode web-search brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ll='exa --long --header --git'        # Preferred 'ls' implementation
alias l='ll'
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display

# Writes AWS CLI v2 commands straight to console i.e. without paging
export AWS_PAGER=''
export EDITOR='nano'

complete -C "$(which aws_completer)" aws
