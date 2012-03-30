"-------------------------------
"   bsnux configuration for Vim
"-------------------------------

" Basic configuration
set nu
set nobackup
syntax on

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Lusty-explorer requires this
set hidden

" Activating ftplugins
filetype plugin on

" Color
"colorscheme wombat
"colorscheme railscasts
colorschem darktango

" Loading custom functions
source ~/.vim/custom/whitespace.vim
