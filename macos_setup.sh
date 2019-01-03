# Install Xcode command line tools
# xcode-select --install

# Install homebrew
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install essential command line tools
brew install zsh
brew install neovim
brew install wget
brew install tree
brew install ack
brew install the_silver_searcher
brew install mas

# Install MacOS applications
brew cask install iterm2
brew cask install sublime-text
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install spotify
brew cask install visual-studio-code
brew cask install vlc

# Install Mac Apps from App Store
mas install 918858936 # Airmail
mas install 775737590 # iA Writer
mas install 425424353 # The Unarchiver

# Install language packs
brew install node
brew install yarn

# Install npm packages
npm install -g serve
npm install -g npm-check
npm install -g @vue/cli

# Install fonts
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-roboto
brew cask install font-roboto-mono
brew cask install font-meslo-for-powerline
brew cask install font-meslo-nerd-font-mono
brew cask install font-fira-code