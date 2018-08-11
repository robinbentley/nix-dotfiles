# make sudo available
sudo -v

# create required directories
mkdir -p /home/robin/.local/share/xfce4/terminal/colorschemes/
mkdir -p /home/robin/.config/nvim/
mkdir -p /home/robin/.nvm/

# link files from dots
ln -sfv /home/robin/dotfiles/gemrc /home/robin/.gemrc
ln -sfv /home/robin/dotfiles/Xmodmap /home/robin/.Xmodmap
ln -sfv /home/robin/dotfiles/gitconfig /home/robin/.gitconfig
ln -sfv /home/robin/dotfiles/zshrc /home/robin/.zshrc
ln -sfv /home/robin/dotfiles/vimrc /home/robin/.vimrc
ln -sfv /home/robin/dotfiles/init.vim /home/robin/.config/nvim/init.vim
ln -sfv /home/robin/dotfiles/resources/themes/oceanic-next.theme /home/robin/.local/share/xfce4/terminal/colorschemes/oceanic-next.theme

# update system and install required packages
sudo apt update -y
sudo apt install -y neovim curl zlib1g-dev

# install vim-plug and install packages
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qa

# install pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
source ~/.zshrc
pyenv install 3.6.6
pyenv global 3.6.6
pip install --user pipenv

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
