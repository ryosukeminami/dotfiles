# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Geometry theme for zsh https://github.com/geometry-zsh/geometry
ZSH_THEME='geometry'

# Geometry Theme Settings
GEOMETRY_PROMPT_PLUGINS=(virtualenv git jobs)    # Plugins
GEOMETRY_COLOR_PROMPT=blue                       # Changes prompt symbol color
PROMPT_GEOMETRY_EXEC_TIME=true                   # Displays process time for long commands
PROMPT_GEOMETRY_GIT_SHOW_STASHES=false           # Disables stash symbol for Git plugin
PROMPT_GEOMETRY_GIT_TIME=false                   # Disables time since last commit
PROMPT_GEOMETRY_GIT_CONFLICTS=true
# PROMPT_GEOMETRY_COLORIZE_SYMBOL='true'

NAME=""

# Check OS version
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
fi

if [[ $NAME = "Scientific Linux" ]]; then
  plugins=(git tmux)
else
  plugins=(git tmux zsh-syntax-highlighting)
fi

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
export PATH=$PATH:/usr/local/opt/openssl@1.1/bin:$PATH
export PATH=$PATH:$HOME/.local/bin:$PATH

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
alias ydp='yarn deploy'

# Aliases for npm
alias ns='npm start'
alias ni='npm install'
alias nu='npm upgrade'
alias nb='npm build'
alias nd='npm run dev'
alias ngui='npm-check -gui'

# Aliases for Python
alias pi='pip install'

# Aliases for conda
alias cua='conda update --all -y'
alias cca='conda clean --all -y'
alias csa='conda activate'
alias csd='conda deactivate'

# Alias for Jupyter notebook
alias jn='jupyter notebook'

# Just to be lazy
alias x='exit'
alias cl='clear'

# Recursive option for dos2unix
alias dos2unixr='find . -type f -print0 | xargs -0 dos2unix'
alias unix2dosr='find . -type f -print0 | xargs -0 unix2dos'

# Desktop Programs
alias xcode='open -a /Applications/XCode.app'
alias f='open -a Finder '
alias fh='open -a Finder .'

if [[ -f $HOME/.profile ]]; then
    source $HOME/.profile
fi

if [[ -f $HOME/.zshrc.local ]]; then
  source $HOME/.zshrc.local
fi

