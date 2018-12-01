#!/bin/bash

# extends the sudo timeout for another 15 minutes
sudo -v

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew
brew update

# install apps from brew-cask
brew cask install mpv
brew cask install slack
brew cask instal iterm2

# install apps from brew
brew install vim
brew install unrar
brew install translate-shell

