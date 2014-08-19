#!/bin/sh
#
# Arch Linux Packages Installer
#
# Installs the packages in arch-deps.txt using pacman

DIR=$(cd "$(dirname "$0")" && pwd)

sudo pacman -S $(< $DIR/arch-deps.txt)

