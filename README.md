# Ruby/Rails centric vimfiles and installer

With a great colour scheme and support for auto-complete, git, rvm and sparkup.

## Requirements

Vim 7.3 or better
Tested on MacOS and Linux

Introduction to Vim: http://blog.interlinked.org/tutorials/vim_tutorial.html

## Quick Install

    curl https://raw.github.com/krisleech/vimfiles/master/bootstrap.sh -o - | sh

## Basic Mappings

The leader is mapped to `,`

### In Normal mode (`Esc` or `jj`)

`,p`     - File browser (NerdTree)

`,f`     - Find in Files (Command-t)

`Space`  - Search in buffer

`,a`     - Search in files (Ack)

`,b`     - Search open buffers (Fuzzy Finder)

`,d`     - close buffer

`,D`     - close all buffers

`,Space` - Remove search highlighting

`,t`     - Show tags

`//`     - Toggle comments (T-Comment)

`F5`     - Undo history (GUndo)

`F6`     - Auto format

`Tab`    - Next buffer

`Shift + Tab` - Previous buffer

`,,`     - Toggle between last two buffers

`,m`     - Jump to model

`,v`     - Jump to view

`,gm`    - Find in app/models

`,gc`    - Find in app/controller

`,gv`    - Find in app/views

`,gr`    - Open routes in split

`,gg`    - Open Gemfile in split

`,vir`   - Visual select inner Ruby block

`,var`   - Visual select around Ruby block

### In Insert mode (`i`)

`jj` - Back to normal mode

`<tab>` - auto complete or expand snippet

See `.vimrc` for more.

## Plugins

### rails            

*Lots* of stuff - get to know this plugin!

`:Rmodel` - jump to model

`:Rview` - jump to view

`:help rails`

### coffee-script

CoffeeScript support

`:CoffeeCompile watch` show compiled js in split

https://github.com/kchmck/vim-coffee-script

### ruby-block

Provides text-objects for Ruby blocks

`var` (visual around Ruby)

`vir` (visual inner Ruby)

`ar` / `ir` (expand/contract selection)

`cir` (change inner Ruby)

`dar` (delete around Ruby)

http://vimcasts.org/blog/2010/12/a-text-object-for-ruby-blocks/

### sparkup (`ctrl+e`)

Expand CSS selectors `div.event` in to markup `<div class='event'></div>`

http://net.tutsplus.com/articles/general/quick-tip-even-quicker-markup-with-sparkup/

### fugitive         

Git integration

*Lots* of stuff

`:Gstatus` and press `-` to stage file

http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/

`:help fugitive`

### rvm              

Add RVM integration

### command-t (`,f`)            

Find files in your project with minimal keypresses

For example `conadus` would find `controllers/admin/users`

`,f path_or_filename`

`,gf path_or_filename` - restrict to files in current directory

`Ctrl + n` - next result

`Ctrl + p` - previous result

`Ctrl + c` - cancel

### snipmate (`TAB`)         

Snippets, press `TAB` to expand

Examples (in a Ruby file):

`def<tab>`

`.each<tab>`

`.eado<tab>`

`ife<tab>`

### gist (`:Gist`)

Gist current file/selection

Requires setting GITHUB_TOKEN and GITHUB_USER Env's

### gundo (`F5`)

Navigate changes history tree 

http://vimcasts.org/episodes/undo-branching-and-gundo-vim/

### tabular

Align stuff

http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

### conque

Terminal/Interactive programs

`:Conque zsh`

`:Conque ls`

  
Note you can also drop back to the terminal using Ctrl+Z, to get
back to Vim with `%1`. This is not a feature of Conque.

### tcomment (`//`)

Comment/Uncomment stuff out

### yankring

Shows history of yanked (copied) text

Pressing `ctrl + p` will also cycle through paste history

### ack (`,a`)

Search project for text (aka find in files)

`,a word`

`,a "some words"`

### nerdtree (`,p`)             

Project file browser

`,p` opens file browser

`o` / `x` open and close files/folders

`m` menu to move/delete/copy files/folders

`?` Help

I use nerdtree for creating or moving files, but find command-t quicker for
opening files.

### surround (`ys`/`cs`/`ds`)

Allows adding/removing/changing of surroundings

I would highly recommend getting to know this plugin, it is very useful.
Especially when you grok text objects.

*Characters*

`ysiw)`    - surround inner word with `()`

`ysiw(`    - surround inner word with `(  )`

In the above example `iw` can be replaced with any text object or motion.

If you find yourself manually adding surroundings, stop and work out the
correct text object or motion.

`cs"'`     - change surrounding from `"` to `'`

`ds`       - delete surrounding

*Tags*

`yss<p>`  - surround line in `<p>` tags

`cst<div>` - change surround tag to `<div>`

### solarized 

A colour scheme, both light and dark version

`:set background=dark`

`:set background=light`

### fuzzyfinder (`,b`)

Find open buffer by path/filename

### taglist (`,l`)

Lists method names, provide auto complete

Run `ctags -R` in project root to generate tags

### vundle

Plugin manager and part of the reason why my vimfiles as so compact

## INSTALLATION

Note: If you are using RVM make sure you use system ruby before installation.
    
    rvm use system

Note: If you already have Vim installed ensure it has support for Ruby:

    vim --version | grep ruby

You should see `+ruby,` if you see `-ruby` you need to reinstall Vim with Ruby support

### Install Vim (if not already installed)

#### MacOS: MacVim / Vim 

    brew install macvim --override-system-vim --enable-clipboard

Add `/usr/local/bin` before `/usr/bin` in your `$PATH` so you use the version of
vim installed by Homebrew, not the one that comes with MacOS.

By installing Vim in this way MacVim and regular Vim are exactly the same.

#### Ubuntu: gVim / Vim

*Server*

    apt-get install vim-nox

*Desktop*

    apt-get install vim-gnome

#### GNU/Linux from source

If you have an old GNU/Linux distro which does not have Vim 7.3 or better in its repos then install from source.

The configure options below leave out any GUI related features as I have only compiled Vim on a server.

Vim source is in a hg (Mercurial) repository so you need to install the hg
client first, e.g.  `sudo apt-get install mercurial`.

    hg clone https://vim.googlecode.com/hg/ vim
    cd vim/vim73
    ./configure
    ./configure --with-features=huge --enable-cscope --enable-pythoninterp --enable-rubyinterp --enable-perlinterp --enable-multibyte
    make
    sudo make install

This installs Vim to `/usr/local/bin,` check this is in your `$PATH` before `/usr/bin` which may contain an older system version of Vim.

### Install these vimfiles

Note: You will already have a `~/.vim` folder, either delete or move it.

    mv ~/.vim ~/.vim.old
    git clone https://github.com/krisleech/vimfiles ~/.vim
    cd ~/.vim
    rake install

or run:

    curl https://raw.github.com/krisleech/vimfiles/master/bootstrap.sh -o - | sh

#### To update to the latest vimfiles

    cd ~/.vim
    rake update

#### Install Dependacies

*MacOS*

    brew install ack
    brew install ctags

Note: MacOS comes with the BSD version of ctags which is not compatible.

*Ubuntu*

    sudo apt-get install exuberant-ctags
    sudo apt-get install ack-grep
    sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack

## Helpful Stuff

- https://github.com/krisleech/vimfiles/wiki
- http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png
- http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
- http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118
- http://stevelosh.com/blog/2010/09/coming-home-to-vim/#important-vimrc-lines
- `:help key-notation`
- http://vimcasts.org/

## Acknowledgments

- Tim Pope (of course) http://tpo.pe/
- https://github.com/carlhuda/janus
- https://github.com/rson/vimfiles/blob/master/plugins.vim
- https://github.com/codegram/vimfiles
- https://www.destroyallsoftware.com/file-navigation-in-vim.html
- https://github.com/alexreisner/dotfiles/blob/master/.vimrc
- http://items.sjbach.com/319/configuring-vim-right
- #vim on freenode
 - woldrich
 - spiiph
