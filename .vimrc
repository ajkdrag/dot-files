syntax enable
inoremap jk <Esc>
vnoremap jk <Esc>

nmap j gj
nmap k gk

nmap H ^
nmap L $

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

autocmd FileType python 
	\ setlocal ts=4 sts=4 sw=4 shiftwidth=4  
	\ colorcolumn=88 expandtab 
	\ number autoindent fileformat=unix

autocmd FileType yaml 
	\ setlocal 
	\ ts=2 sts=2 sw=2 
	\ shiftwidth=2 expandtab autoindent

set clipboard=unnamedplus
vmap <silent> <C-c> :w !clip.exe<CR><CR>

set foldmethod=indent
set foldlevel=99
set ruler
set number
set cursorline
set showmatch
set hlsearch
set incsearch


call plug#begin()
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'dense-analysis/ale'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/vim-easy-align'
call plug#end()

colorscheme dracula

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:codeium_disable_bindings = 1
set statusline+=%3{codeium#GetStatusString()}
imap <script><silent><nowait><expr> <C-g> codeium#Accept()
imap <c-u>   <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <c-i>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <c-x>   <Cmd>call codeium#Clear()<CR>

let g:ale_linters = {
	\ 'python': ['ruff'],
	\}
let g:ale_fixers = {
	\ '*': [],
	\ 'python': ['ruff', 'ruff_format'],
	\}
let g:ale_fix_on_save = 1
