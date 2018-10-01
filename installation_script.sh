# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install geometry theme
git clone https://github.com/geometry-zsh/geometry.git $HOME/.oh-my-zsh/custom/themes/geometry
ln -s $HOME/.oh-my-zsh/custom/themes/geometry/geometry.zsh-theme $HOME/.oh-my-zsh/custom/themes/geometry.zsh-theme

# Replace rc files
rm -f $HOME/.bashrc $HOME/.bash_profile $HOME/.zshrc $HOME/.zshrc.pre-oh-my-zsh
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.bashrc $HOME/.bashrc
ln -s $PWD/.bash_profile $HOME/.bash_profile

