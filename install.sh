#!/bin/sh
TMUX_FOLDER=$(cd $(dirname $0) && pwd -P)
rm -f ~/.tmux
ln -s $TMUX_FOLDER/tmux ~/.tmux
ln -fs $TMUX_FOLDER/tmux.conf ~/.tmux.conf
