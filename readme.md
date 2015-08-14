# Linux Dotfiles
Using Umbongo on my desktop for the moment. Want to keep track of the changes to dotfiles and then try to combine them with the OS X versions so one repo will suit both OSs
Alot of the zsh paths are irrelevant at the moment, it's on the list

    git clone git@github.com:robinbentley/nix-dotfiles.git ~/dotfiles

## apt packages
TODO

## Symlinks
    ln -fs ~/dotfiles/zsh ~/.zsh
    ln -fs ~/dotfiles/zshrc ~/.zshrc
    ln -fs ~/dotfiles/gemrc ~/.gemrc
    ln -fs ~/dotfiles/gitconfig ~/.gitconfig
    ln -fs ~/dotfiles/vim ~/.vim
    ln -fs ~/dotfiles/vimrc ~/.vimrc
    ln -fs ~/dotfiles/gvimrc ~/.gvimrc
    ln -fs ~/dotfiles/weechat ~/.weechat

## Actions
    #change shell to zsh once it's installed
    chsh -s /bin/zsh
