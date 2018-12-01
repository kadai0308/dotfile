#!/bin/bash

# extends the sudo timeout for another 15 minutes
sudo -v

# install zsh
brew install zsh

# set as default
sudo sh -c "echo $(which zsh) >> /etc/shells" 
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"