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
let g:clipboard = {
                        \   'name': 'win32yank-wsl',
                        \   'copy': {
                        \      '+': 'win32yank.exe -i --crlf',
                        \      '*': 'win32yank.exe -i --crlf',
                        \    },
                        \   'paste': {
                        \      '+': 'win32yank.exe -o --lf',
                        \      '*': 'win32yank.exe -o --lf',
                        \   },
                        \   'cache_enabled': 0,
                        \ }

set foldmethod=indent
set foldlevel=99
set ruler
set number
set cursorline
set showmatch
set hlsearch
set incsearch
set statusline+=%3{codeium#GetStatusString()}


call plug#begin()
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'nvie/vim-flake8'
Plug 'dense-analysis/ale'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

colorscheme dracula

let g:codeium_disable_bindings = 1
imap <script><silent><nowait><expr> <C-g> codeium#Accept()
imap <C-i>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-u>   <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <C-x>   <Cmd>call codeium#Clear()<CR>

let g:ale_linters = {
	\ 'python': ['ruff'],
	\}
let g:ale_fixers = {
	\ '*': [],
	\ 'python': ['ruff', 'ruff_format'],
	\}
let g:ale_fix_on_save = 1
