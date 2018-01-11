
# Path to your oh-my-zsh installation.
export ZSH=/Users/ryosuke/.oh-my-zsh
ZSH_THEME="agnoster-alt"

plugins=(git)
source $ZSH/oh-my-zsh.sh

HYPHEN_INSENSITIVE="true"

# ENABLE_CORRECTION="true"

# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

unsetopt correct_all
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

DEFAULT_USER="ryosuke"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH=$HOME/Documents/go/
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH=$HOME/anaconda2/bin:$PATH
