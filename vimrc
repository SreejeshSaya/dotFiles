"*****************************************************************************
"" Plug
"*****************************************************************************
call plug#begin()

" Comment/Un-comment 
Plug 'tpope/vim-commentary'

" NERDTREE
Plug 'scrooloose/nerdtree'

" Color-Scheme
Plug 'morhetz/gruvbox' 

" Lightline
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

call plug#end()

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"

set autoread

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Visual
syntax on
set ruler
set number
set relativenumber
set ruler
set so=5

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set smarttab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

set ai
set si
set wrap

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Turn backup off
set nobackup
set noswapfile

set laststatus=2
set noshowmode

"*****************************************************************************
"" Mappings
"*****************************************************************************

"" Fast Saving
nnoremap <leader>w :w!<CR>
"" Fast Quit
nnoremap <leader>q :wq!<CR>

"" Fast Escape
inoremap qq <Esc>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" source %
nnoremap <leader>s :source %<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

"Recovery commands from history through FZF
nmap <leader>y :History:<CR>


noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Buffer nav
" noremap <leader>z :bp<CR>
" noremap <leader>q :bp<CR>
" noremap <leader>x :bn<CR>
" noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

nnoremap n nzzzv
nnoremap N Nzzzv

"*****************************************************************************
"" Visual Settings
"*****************************************************************************

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

let g:gruvbox_italix=1
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='hard'  
set background=dark
silent! colorscheme gruvbox

let g:lightline = {
 \ 'colorscheme': 'gruvbox'
 \ }
