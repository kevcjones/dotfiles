export ZSH="/Users/jamieroos/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git vscode web-search brew)

source $ZSH/oh-my-zsh.sh

alias ll='exa --long --header --git'        # Preferred 'ls' implementation
alias l='ll'
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display

# Writes AWS CLI v2 commands straight to console i.e. without paging
export AWS_PAGER=''
export EDITOR='nano'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload bashcompinit && bashcompinit
complete -C "$(which aws_completer)" aws
