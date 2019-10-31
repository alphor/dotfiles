    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath

    call plug#begin(stdpath('data') . '/plugged')

    Plug 'dense-analysis/ale'
    Plug 'LnL7/vim-nix'
    Plug 'tpope/vim-fugitive'

    call plug#end()