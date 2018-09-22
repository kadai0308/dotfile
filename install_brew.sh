#!/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew
brew update

# install apps from brew-cask
brew cask install homebrew/cask-versions/firefox-nightly
brew cask install google-backup-and-sync
brew cask install sublime-text
brew cask install mpv
brew cask install marp
brew cask install xquartz
brew cask install telegram-desktop
brew cask install slack

# install apps from brew
brew install bash-completion
brew install vim
brew install unrar
brew install translate-shell
brew install openconnect
