#!/bin/sh
TMUX_FOLDER=$(cd $(dirname $0) && pwd)
echo $TMUX_FOLDER
rm ~/.tmux
ln -s $TMUX_FOLDER ~/.tmux
ln -fs $TMUX_FOLDER/tmux.conf ~/.tmux.conf
