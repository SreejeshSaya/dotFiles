"" au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"" au VimLeave * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

call plug#begin()
Plug 'tpope/vim-commentary' " Comment/Un-comment 
Plug 'morhetz/gruvbox' 
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
    " Need Snippets
call plug#end()

set autoread
set number
set ruler
set encoding=utf-8
set fileencoding=utf-8
set ttyfast
syntax on

set smartindent
set tabstop=4

set so=5
set backspace=indent,eol,start
set smarttab

set hidden

set softtabstop=0
set shiftwidth=4

set ai
set si
set wrap

"" Searching
set hlsearch incsearch ignorecase smartcase

" Turn backup off
set nobackup noswapfile

"" Status bar
"" set laststatus=2

set mouse=a
set mousemodel=popup

" set clipboard=unnamed,unnamedplus
filetype plugin indent on

command! FixWhitespace :%s/\s\+$//e

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

"" Use modeline overrides
"" set modeline
"" set modelines=10

"" set title
"" set titleold="Terminal"
"" set titlestring=%F

"" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\


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

inoremap endl <<<space>"\n";<CR>

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

vmap < <gv
vmap > >gv

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <Leader>e :e ~/.vimrc<CR>

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall