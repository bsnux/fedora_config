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

" Django snippets for Python and HTML files
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" Loading custom functions
source ~/.vim/custom/whitespace.vim
