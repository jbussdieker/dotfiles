#!/bin/bash
print_status() {
  echo -ne " * $1\033[80G"
}

print_success() {
  echo -ne "\033[74G[\033[32m OK \033[00m]\n"
}

print_fail() {
  echo -ne "\033[74G[\033[31m NG \033[00m]\n"
}

print_status "Downloading submodules..."
cd ~/.dotfiles
git submodule -q init
git submodule -q update
print_success

print_status "Setting up bash dot files..."
ln -sf ~/.dotfiles/bash/profile ~/.profile
ln -sf ~/.dotfiles/bash/bashrc ~/.bashrc
ln -sf ~/.dotfiles/bash/bash_aliases ~/.bash_aliases
print_success

print_status "Setting up vim dot files..."
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/vim/gvimrc ~/.gvimrc
[ -d ~/.vim ] || ln -sf ~/.dotfiles/vim ~/.vim
print_success

print_status "Setting up git dot files..."
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig
print_success
