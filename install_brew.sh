#!/bin/bash

# extends the sudo timeout for another 15 minutes
sudo -v

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew
brew update

# install apps from brew-cask
brew cask install google-backup-and-sync
brew cask install sublime-text
brew cask install mpv
brew cask install marp
brew cask install xquartz
brew cask install telegram-desktop
brew cask install slack

# install plug-in for slack
curl -OL https://github.com/fsavje/math-with-slack/releases/download/v0.2.5/math-with-slack.sh
sudo bash math-with-slack.sh
rm math-with-slack.sh

# install apps from brew
brew install bash-completion
brew install vim
brew install unrar
brew install translate-shell
brew install openconnect

