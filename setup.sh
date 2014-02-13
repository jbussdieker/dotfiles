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

print_status "Setting up bash dot files"
ln -s -f ~/.dotfiles/bash/profile ~/.profile
ln -s -f ~/.dotfiles/bash/profile ~/.profile
print_success

print_status "Setting up vim dot files"
ln -s -f ~/.dotfiles/vim/vimrc ~/.vimrc
print_success
