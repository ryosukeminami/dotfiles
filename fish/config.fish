set fish_greeting ""
export CLICOLOR=1
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/Documents/go/

# Language support for Perl
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if not set -q abbrs_initialized
	set -U abbrs_initialized
	# echo -n Setting abbreviations... 

	# Abbreviations for git
	abbr ga 'git add'
	abbr gc 'git commit'
	abbr gco 'git checkout'
	abbr gl 'git pull'
	abbr gp 'git push'
	abbr gst 'git status'
	abbr gcl 'git clone'
	abbr gd 'git diff'

	# Some abbreviations for Homebrew
	abbr bu 'brew update; and brew upgrade'
	abbr bout 'brew outdated'
	abbr bi 'brew install'
	abbr brm 'brew uninstall'
	abbr bls 'brew list'
	abbr bsr 'brew search'
	abbr binf 'brew info'
	abbr bdr 'brew doctor'

	# NeoVim is the only text editor you need
	abbr v 'nvim'
	abbr vi 'nvim'
	abbr vim 'nvim'

	# Abbreviations for yarn
	abbr ya 'yarn add'
	abbr yb 'yarn build'
	abbr yi 'yarn install'
	abbr yu 'yarn upgrade'
	abbr ys 'yarn start'
	abbr yd 'yarn run dev'

	# Abbreviations for npm
	abbr ns 'npm start'
	abbr nb 'npm build'
	abbr ni 'npm install'
	abbr nu 'npm upgrade'
	abbr nd 'npm run dev'

	# Abbreviations for Python
	abbr pi 'pip install'

	# Just to be lazy
	abbr x 'exit'
	abbr cl 'clear'

	# Recursive option for dos2unix
	abbr dos2unixr 'find . -type f -print0 | xargs -0 dos2unix'
	abbr unix2dosr 'find . -type f -print0 | xargs -0 unix2dos'

	# Desktop Programs
	abbr f 'open -a Finder '

	# echo 'Done'
end
