#!/bin/bash

# link dotfiles to home
ln -s $(pwd)/gitconfig ${HOME}/.gitconfig
ln -s $(pwd)/screenrc ${HOME}/.screenrc
ln -s $(pwd)/vimrc ${HOME}/.vimrc
ln -s $(pwd)/screenrc ${HOME}/.screenrc

if [ $(uname -s) = 'Darwin' ]; then 
  ln -s $(pwd)/bash_profile ${HOME}/.bash_profile
fi
