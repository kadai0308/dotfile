#!/bin/bash

# extends the sudo timeout for another 15 minutes
sudo -v

# install pip
easy_install pip

# install pyenv
brew install pyenv
brew install pyenv-virtualenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
pyenv install 2.7.8
pyenv install 3.6
