#!/usr/bin/env bash
#Get path of containing directory
MICROBE_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
#Execute all .tmux files in plugins directory
if [ $# -eq 0 ]
then
	find $MICROBE_DIR/../plugins -name *.tmux -type f -exec bash -c {} \;
elif [ $# -eq 1 ] && [ $1 == "-u" ]
then
	find $MICROBE_DIR/../plugins -type d -depth 1 -exec sh -c "cd {}; git pull master" \;
else
	echo "Invalid arguments"
fi
