export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git vscode web-search brew zsh-completions zsh-syntax-highlighting)

source "$ZSH/oh-my-zsh.sh"

alias ll='eza --long --header --git'        # Preferred 'ls' implementation
alias l='ll'
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display

# Writes AWS CLI v2 commands straight to console i.e. without paging
export AWS_PAGER=''
export EDITOR='nano'

# Extend path with VS Code, Python, Homebrew support
export PATH="/usr/local/bin/code:$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"

complete -C "$(which aws_completer)" aws

source "$ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# For zsh-completions
autoload -U compinit && compinit -i

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# https://www.matscloud.com/blog/2020/06/25/how-to-use-aws-cdk-with-aws-sso-profiles/
function awssso() {
    aws sso login --profile $1
    export AWS_PROFILE=$1
    python3 ~/.aws_sso.py $1
}
