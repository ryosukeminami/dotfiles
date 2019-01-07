HYPHEN_INSENSITIVE='true'
unsetopt correct_all

# Geometry Theme Settings
GEOMETRY_PROMPT_PLUGINS=(virtualenv git jobs)    # Plugins
GEOMETRY_COLOR_PROMPT=blue                       # Changes prompt symbol color
PROMPT_GEOMETRY_EXEC_TIME=true                   # Displays process time for long commands
PROMPT_GEOMETRY_GIT_SHOW_STASHES=false           # Disables stash symbol for git plugin
PROMPT_GEOMETRY_GIT_TIME=false                   # Disables time since last commit
PROMPT_GEOMETRY_GIT_CONFLICTS=true               # Enables git conflicts icon

export ZPLUG_HOME="/usr/local/opt/zplug"
source $ZPLUG_HOME/init.zsh

zplug "zplug/zplug"
zplug "zsh-users/zsh-completions"
# zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "lib/git", from:oh-my-zsh
# zplug "lib/completion", from:oh-my-zsh
zplug "lib/correction", from:oh-my-zsh
# zplug "lib/directories", from:oh-my-zsh
# zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "geometry-zsh/geometry"

# Because zsh-syntax-highlighting crashes the terminal in Scientific Linux for some reason
if [[ $NAME != "Scientific Linux" ]]; then
    zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
fi

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

# Autocomplete for Google Cloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Check OS version
if [[ -f /etc/os-release ]]; then
    . /etc/os-release
fi

if [[ -f $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

if [[ -f $HOME/.profile ]]; then
    source $HOME/.profile
fi

if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi


