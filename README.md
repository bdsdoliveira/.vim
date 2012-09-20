VIM configuration
=================

## First step

If you already have a .vimrc, make a backup and then execute (Linux):

    echo "source ~/.vim/.vimrc" > ~/.vimrc

## Installation

    cd
    git clone git@github.com:bruoliveir/.vim.git


## Post-installation

To include documentation from new plugins in standard help inside VIM
(always run this after including new documentation):

    :helptags ~/.vim/doc
