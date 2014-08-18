#!/bin/sh
#
# Oh My Zsh
#
# Install oh-my-zsh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    curl -L http://install.ohmyz.sh | sh
    rm $HOME/.zshrc
fi
