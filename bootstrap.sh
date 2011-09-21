for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done
git clone https://github.com/krisleech/vimfiles ~/.vim && cd ~/.vim && rake install
