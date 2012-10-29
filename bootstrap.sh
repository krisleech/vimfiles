#!/bin/sh
cp -r ~/.vim ~/.vim.old 2>/dev/null
rm -fr ~/.vim 2>/dev/null
rm -f ~/.vimrc 2>/dev/null
git clone https://github.com/errinlarsen/vimfiles/tree/mine ~/.vim && cd ~/.vim && rake install && ln -s ~/.vim/vimrc ~/.vimrc
