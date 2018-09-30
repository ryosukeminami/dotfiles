# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install geometry theme
git clone https://github.com/geometry-zsh/geometry.git $HOME/.oh-my-zsh/custom/themes
ln -s $HOME/.oh-my-zsh/custom/themes/geometry/geometry.zsh-theme $HOME/.oh-my-zsh/custom/themes/geometry.zsh-theme

# Replace rc files
rm -f $HOME/.bashrc $HOME/.bash_profile $HOME/.zshrc $HOME/.zshrc.pre-oh-my-zsh
ln -s .zshrc $HOME/.zshrc
ln -s .bashrc $HOME/.bashrc
ln -s .bash_profile $HOME/.bash_profile

