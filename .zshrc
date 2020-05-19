zmodload zsh/zprof

# zsh configuration
setopt auto_cd
HYPHEN_INSENSITIVE='true'
# unsetopt correct_all
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Geometry Theme Settings
GEOMETRY_PROMPT_PLUGINS=(virtualenv git jobs)    # Plugins
GEOMETRY_COLOR_PROMPT=blue                       # Changes prompt symbol color
PROMPT_GEOMETRY_EXEC_TIME=true                   # Displays process time for long commands
PROMPT_GEOMETRY_GIT_SHOW_STASHES=false           # Disables stash symbol for git plugin
PROMPT_GEOMETRY_GIT_TIME=false                   # Disables time since last commit
# PROMPT_GEOMETRY_GIT_CONFLICTS=true               # Enables git conflicts icon


# If the OS is MacOS, use "usr/local/opt/zplug"
if [ "$(uname 2> /dev/null)" = "Darwin" ]; then
	export ZPLUG_HOME=/usr/local/opt/zplug
else
	export ZPLUG_HOME=$HOME/.zplug
fi

source $ZPLUG_HOME/init.zsh

# zplug "zplug/zplug"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "lib/completion", from:oh-my-zsh
# zplug "lib/compfix", from:oh-my-zsh
zplug "lib/correction", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh          # Includes aliases such as '...' for '../..'
zplug "lib/history", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh              # Includes alias such as 'ga' for 'git add'
# zplug "plugins/github", from:oh-my-zsh
# zplug "plugins/command-not-found", from:oh-my-zsh
# zplug "plugins/gitignore", from:oh-my-zsh
# zplug "plugins/tmux", from:oh-my-zsh
# zplug "plugins/man", from:oh-my-zsh
# zplug "plugins/npm", from:oh-my-zsh
# zplug "plugins/pip", from:oh-my-zsh
# zplug "plugins/yarn", from:oh-my-zsh
# zplug "mafredri/zsh-async", from:github
# zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

zplug "geometry-zsh/geometry", as:theme
# zplug "mafredri/zsh-async", from:github
# zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Check OS version
# if [[ -f /etc/os-release ]]; then
#     . /etc/os-release
# fi

# Install packages that have not been installed yet
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     else
#         echo
#     fi
# fi

zplug load

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export KEYTIMEOUT=1
export TERMINAL_DARK=1
export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=nvim

# Compilation flags
export ARCHFLAGS='-arch x86_64'
export LDFLAGS='-L/usr/local/opt/qt/lib'
export CPPFLAGS='-I/usr/local/opt/qt/include'

export PKG_CONFIG_PATH='/usr/local/opt/qt/lib/pkgconfig'
export GOPATH=$HOME/Documents/go

# golang setup
export PATH=/usr/local/go/bin:$GOPATH/bin:$PATH
# export PATH=HOME/.local/bin:$PATH
export PATH=/usr/local/opt/go/libexec/bin:$PATH

# Android development command line tools
export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [[ -f $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
