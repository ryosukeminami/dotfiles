# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Geometry theme for zsh https://github.com/geometry-zsh/geometry
ZSH_THEME='geometry/geometry'

# Geometry Theme Settings
GEOMETRY_PROMPT_PLUGINS=(virtualenv git jobs)    # Plugins
GEOMETRY_COLOR_PROMPT=blue                       # Changes prompt symbol color
PROMPT_GEOMETRY_EXEC_TIME=true                   # Displays process time for long commands
PROMPT_GEOMETRY_GIT_SHOW_STASHES=false           # Disables stash symbol for Git plugin
PROMPT_GEOMETRY_GIT_CONFLICTS=true
# PROMPT_GEOMETRY_COLORIZE_SYMBOL='true'

plugins=(git tmux zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export KEYTIMEOUT=1
export TERMINAL_DARK=1
export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=nvim

HYPHEN_INSENSITIVE='true'

# Compilation flags
export ARCHFLAGS='-arch x86_64'

unsetopt correct_all

export GOPATH=$HOME/Documents/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Some aliases for Homebrew
alias bu='brew update && brew upgrade'
alias bout='brew outdated'
alias bi='brew install'
alias brm='brew uninstall'
alias bls='brew list'
alias bsr='brew search'
alias binf='brew info'
alias bdr='brew doctor'
alias bcl='brew cleanup'

# NeoVim is the only text editor you need
alias v='nvim'
alias vi='nvim'
# alias vim='nvim'

# Aliases for yarn
alias ya='yarn add'
alias yi='yarn install'
alias yu='yarn upgrade'
alias ys='yarn start'
alias yb='yarn build'
alias yd='yarn run dev'
alias yui='yarn upgrade-interactive'

# Aliases for npm
alias ns='npm start'
alias ni='npm install'
alias nu='npm upgrade'
alias nb='npm build'
alias nd='npm run dev'

# Aliases for Python
alias pi='pip install'

# Additional aliases for Git

# Just to be lazy
alias x='exit'
alias cl='clear'

# Recursive option for dos2unix
alias dos2unixr='find . -type f -print0 | xargs -0 dos2unix'
alias unix2dosr='find . -type f -print0 | xargs -0 unix2dos'

# Desktop Programs
alias xcode='open -a /Applications/XCode.app'
alias safari='open -a /Applications/Safari.app'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias f='open -a Finder '
alias fh='open -a Finder .'


# export NVM_DIR='$HOME/.nvm'
# [ -s '$NVM_DIR/nvm.sh' ] && \. '$NVM_DIR/nvm.sh'  # This loads nvm
# [ -s '$NVM_DIR/bash_completion' ] && \. '$NVM_DIR/bash_completion'  # This loads nvm bash_completion


if [[ -f $HOME/.zshrc.local ]]; then
  source $HOME/.zshrc.local
fi
