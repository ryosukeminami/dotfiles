# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Geometry theme for zsh <https://github.com/geometry-zsh/geometry>
ZSH_THEME='geometry/geometry'

# Geometry Theme Settings
GEOMETRY_PROMPT_PLUGINS=(virtualenv git jobs jenv)    # Plugins
GEOMETRY_COLOR_PROMPT=blue                       # Changes prompt symbol color
PROMPT_GEOMETRY_EXEC_TIME=true                   # Displays process time for long commands
PROMPT_GEOMETRY_GIT_SHOW_STASHES=false           # Disables stash symbol for git plugin
PROMPT_GEOMETRY_GIT_TIME=false                   # Disables time since last commit
PROMPT_GEOMETRY_GIT_CONFLICTS=true               # Enables git conflicts icon

# Check OS version
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
fi

# Because zsh-syntax-highlighting crashes the terminal in Scientific Linux for some reason
if [[ $NAME = "Scientific Linux" ]]; then
  plugins=(git tmux)
else
  plugins=(git tmux zsh-syntax-highlighting jenv yarn)
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
export LDFLAGS='-L/usr/local/opt/qt/lib'
export CPPFLAGS='-I/usr/local/opt/qt/include'

export PKG_CONFIG_PATH='/usr/local/opt/qt/lib/pkgconfig'

unsetopt correct_all

export GOPATH=$HOME/Documents/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/openssl@1.1/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

if [[ -f $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

if [[ -f $HOME/.profile ]]; then
    source $HOME/.profile
fi

if [[ -f $HOME/.zshrc.local ]]; then
  source $HOME/.zshrc.local
fi

