#!/bin/sh
TMUX_FOLDER=$(cd $(dirname $0) && pwd)
rm ~/.tmux
ln -s $TMUX_FOLDER ~/.tmux
ln -fs $TMUX_FOLDER/tmux.conf ~/.tmux.conf
