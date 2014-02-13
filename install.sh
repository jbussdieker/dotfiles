#!/bin/bash
if [ ! -d ${HOME}/.dotfiles ] ; then
  echo "Installing DOT Files"
  cd ${HOME} && git clone git@github.com:jbussdieker/dotfiles.git .dotfiles
  cd ${HOME}/.dotfiles && ./setup.sh
else
  echo "DOT Files already installed"
fi
