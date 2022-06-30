#!/bin/sh

echo "Setting up your vimrc..."

# we are using `The Ultimate Vim configuration`:
# https://github.com/amix/vimrc
git clone --depth=1 git@github.com:brucelyu/vimrc.git $HOME/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
