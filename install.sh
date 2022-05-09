#!/bin/bash

usage() { 
cat << EOF
Usage: $0 [-c] [-h]

-c		Clean folder after installation
-h		Display this help message
EOF
exit 0
}

CLEAN=0
while getopts "ch" o; do
	case "${o}" in
		c)
			CLEAN=1;;
		h)
			usage;;
	esac
done

echo "Installing..."

cp -r vim ~/.vim
cp vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +'PlugInstall --sync' +qa

if [ $CLEAN -eq 1 ]; then
	echo "Cleaning..."
	cd ..
	rm -rf vim-config
fi
