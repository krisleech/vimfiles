set nocompatible               " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle "https://github.com/mileszs/ack.vim"
Bundle "https://github.com/tpope/vim-rvm"
Bundle "git://github.com/tpope/vim-fugitive",
Bundle "git://github.com/tpope/vim-rails.git",
Bundle "git://github.com/tpope/vim-surround.git",
" Bundle "git://github.com/tpope/vim-haml.git",
" Bundle "git://github.com/tpope/vim-cucumber.git",
" Bundle "git://github.com/tpope/vim-speeddating",
" Bundle 'git://github.com/plasticboy/vim-markdown.git',
Bundle "git://github.com/chrismetcalf/vim-yankring.git",
Bundle "git://github.com/chrismetcalf/vim-taglist.git",
Bundle "git://github.com/tpope/vim-endwise.git",
Bundle "git://github.com/scrooloose/syntastic.git",
" Bundle "git://github.com/codegram/vim-todo.git",
" Bundle "git://github.com/codegram/vim-numberlock.git",
Bundle "git://github.com/Townk/vim-autoclose.git",
Bundle "git://github.com/scrooloose/nerdtree.git",
Bundle "git://github.com/rstacruz/sparkup.git",
Bundle "git://github.com/panozzaj/vim-autocorrect.git",
Bundle "git://github.com/tsaleh/vim-tcomment.git",
" Bundle "git://github.com/shemerey/vim-peepopen.git",
Bundle "git://github.com/sjl/gundo.vim.git",
Bundle "git://github.com/clones/vim-fuzzyfinder.git",
Bundle "git://github.com/godlygeek/tabular.git",
Bundle 'git://github.com/skammer/vim-css-color.git',
Bundle "git://github.com/vim-scripts/Gist.vim.git",
Bundle "git://github.com/vim-scripts/L9.git"
Bundle "https://github.com/Bogdanp/rbrepl.vim"
Bundle "https://github.com/rson/vim-conque"

" Bundle "https://github.com/Lokaltog/vim-easymotion"
" let g:EasyMotion_leader_key = '<Leader>t'

Bundle 'git://git.wincent.com/command-t.git'
Bundle "http://github.com/gmarik/snipmate.vim.git"
Bundle "https://github.com/krisleech/snipmate-snippets"
Bundle 'altercation/vim-colors-solarized'
Bundle "jQuery"
Bundle "https://github.com/kana/vim-textobj-user"
Bundle "https://github.com/nelstrom/vim-textobj-rubyblock"

filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    
