VIM configuration
=================

## First step

If you already have a .vimrc, make a backup and then execute (Linux):

    echo "source ~/.vim/.vimrc" > ~/.vimrc

## Installation

    cd
    git clone --recursive git@github.com:bruoliveir/.vim.git


## Post-installation

To include documentation from new plugins in standard help inside VIM
(always run this after including new documentation):

    :helptags ~/.vim/doc

To include new plugins as submodules (git repositories) do:

    cd ~/.vim
    git submodule add [git@github.com:account/reponame.git bundle/reponame]

To update all submodules, execute the following at the root of the repository (~/.vim):

    git submodule foreach git pull origin master

To remove a submodule, refer to: [http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule](http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule)
