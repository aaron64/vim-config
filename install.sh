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
while getopts ":c:h" o; do
	case "${o}" in
		c)
			c=1;;
		h)
			usage;;
	esac
done

echo "Installing..."

cp -r vim ~/.vim
cp vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ $CLEAN -eq 1 ]; then
	cd ..
	rm -rf vim-config
fi
