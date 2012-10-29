#!/bin/sh
cp -r ~/.vim ~/.vim.old 2>/dev/null
rm -fr ~/.vim 2>/dev/null
rm -f ~/.vimrc 2>/dev/null
git clone git@github.com:errinlarsen/vimfiles.git ~/.vim && cd ~/.vim && rake install && ln -s ~/.vim/vimrc ~/.vimrc
