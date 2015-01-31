#!/usr/bin/env zsh
#
# Powerline
#

# Install powerline from git using pip (local)
#
pip install --user --upgrade git+git://github.com/Lokaltog/powerline

# Install fonts
mkdir -p $HOME/.fonts/
curl -L -o $HOME/.fonts/PowerlineSymbols.otf \
  https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf \
  && fc-cache -f $HOME/.fonts/
mkdir -p $HOME/.config/fontconfig/conf.d/
curl -L -o $HOME/.config/fontconfig/conf.d/10-powerline-symbols.conf \
  https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf

# Install powerline-daemon service (not enabled)
mkdir -p $HOME/.config/systemd/user/
cp $(dirname "$0")/powerline-daemon.service \
  $HOME/.config/systemd/user/powerline-daemon.service


# Initally skipped by zsh, remove .disabled after install to enable
touch `dirname $0:A`/.disable
echo "Powerline is disabled by default, remove .disable to enable"

