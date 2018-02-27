# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

eval $(/usr/libexec/path_helper -s)
eval "$(rbenv init -)"

# iTerm 2 Shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Some aliases for Homebrew
alias bu='brew update && brew upgrade'
alias bout='brew outdated'
alias bi='brew install'
alias brm='brew uninstall'
alias bls='brew list'
alias bsr='brew search'
alias binf='brew info'
alias bdr='brew doctor'

# NeoVim is the only text editor you need
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Aliases for yarn
alias ya='yarn add'
alias yi='yarn install'
alias yu='yarn upgrade'
alias ys='yarn start'
alias yd='yarn run dev'

# Aliases for npm
alias ns='npm start'
alias ni='npm install'
alias nu='npm upgrade'
alias nd='npm run dev'

# Aliases for Python
alias pi='pip install'

# Additional aliases for Git
alias gch='git checkout'

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

if [[ -f $HOME/.bashrc.local ]]; then
  source $HOME/.bashrc.local
fi