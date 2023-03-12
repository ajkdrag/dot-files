colorscheme torte

syntax enable
inoremap jk <Esc>
vnoremap jk <Esc>

nmap j gj
nmap k gk

nmap H ^
nmap L $

set clipboard=unnamedplus
set ruler
set number
set cursorline
set showmatch
set hlsearch
set incsearch

autocmd FileType python setlocal ts=4 sts=4 sw=4 shiftwidth=4 colorcolumn=80 expandtab number autoindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 shiftwidth=2 expandtab autoindent
