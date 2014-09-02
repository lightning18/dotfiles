#
# Enable powerline
#
# Check and enable powerline
# TODO: check if in tty/gfxterm

PYDIR=$HOME/.local/lib/python3.4/site-packages

hash powerline 2>/dev/null && source $PYDIR/powerline/bindings/zsh/powerline.zsh
