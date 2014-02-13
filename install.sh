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

print_status "Installing DOT Files"
if [ ! -d ${HOME}/.dotfiles ] ; then
  cd ${HOME} && git clone git@github.com:jbussdieker/dotfiles.git .dotfiles
  print_success

  cd ${HOME}/.dotfiles && ./setup.sh
else
  print_fail
  echo "DOT Files already installed!"
fi
