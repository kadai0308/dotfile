#!/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew
brew update

# install apps from brew-cask
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install visual-studio-code
brew cask install basictex
brew cask install mpv
brew cask install marp
brew cask install xquartz
brew cask install telegram-desktop
brew cask install osxfuse

# install apps from brew
brew install wget
brew install vim
brew install unrar
brew install sshfs

# Extension for visual studio code
code --install-extension gerane.Theme-Blackboard
code --install-extension mshr-h.VerilogHDL
code --install-extension mshr-h.SystemVerilog
