#!/bin/sh
#
# Antigen Installer
#
# Installs antigen using git

if [ ! -d "$HOME/antigen" ]; then
  git clone https://github.com/zsh-users/antigen.git $HOME/antigen
fi
