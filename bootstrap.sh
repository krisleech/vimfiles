#!/bin/sh
cp -r ~/.vim ~/.vim.old 2>/dev/null
cp -f ~/.vimrc ~/.vim.old 2>/dev/null
rm -fr ~/.vim 2>/dev/null
rm -f ~/.vimrc 2>/dev/null
git clone https://github.com/krisleech/vimfiles ~/.vim && cd ~/.vim && rake install && ln -s ~/.vim/vimrc ~/.vimrc
