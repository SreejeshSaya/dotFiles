call plug#begin()

" Comment/Un-comment 
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox' 
Plug 'itchyny/lightline.vim'
Plugin 'dracula/vim',{'as':'dracula'}

call plug#end()

set autoread

set encoding=utf-8
set fileencoding=utf-8
set ttyfast
syntax on

set ruler
set number
set so=5
set backspace=indent,eol,start
set smarttab
set tabstop=4
set softtabstop=0
set shiftwidth=4

set mouse=a

set ai
set si
set wrap
set hidden

"" Searching
set hlsearch incsearch ignorecase smartcase

" Turn backup off
set nobackup noswapfile

syntax on
let mapleader=','

"" Fast Saving
nnoremap <leader>w :w!<CR>

"" Fast Quit
nnoremap <leader>q :wq!<CR>

nnoremap <F6> :w <bar> !g++ -std=c++17 -Wshadow -Wall -o %:r % -O2 -Wno-unused-result && ./%:r<CR>
nnoremap <F7> :w <bar> !g++ -std=c++17 -Wshadow -Wall -o %:r % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && ./%:r<CR>
inoremap qq <Esc>

inoremap {[ {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {{ {<CR>}<CR><Esc>kO

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

vmap < <gv
vmap > >gv

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap n nzzzv
nnoremap N Nzzzv

