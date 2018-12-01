#!/bin/bash

# link dotfiles to home
./link_dotfiles.sh

# install brew
./install_brew.sh

# import all settings
./import_all_defaults_domain.sh

# install zsh
./zsh.sh

# python & pip config
./python.sh