#!/bin/sh

CONFIG_DIR=$(readlink -f $(dirname $0))

ln -s $CONFIG_DIR ~/.vim
ln -s $CONFIG_DIR/vimrc ~/.vimrc

