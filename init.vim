"------------------------
" PLUGINS
"------------------------

call plug#begin()
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'
Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"------------------------
" BASIC CONFIG
"------------------------

au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

set termguicolors
set autoread
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ruler
set number
set ruler
set so=5
set backspace=indent,eol,start
set smarttab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set ai
set si
set wrap
set foldmethod=syntax
set nofoldenable
set hidden
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set laststatus=2
set noshowmode
set mouse=a
set cursorline

syntax on
let mapleader=','

" ------------------------------

nnoremap <F6> :!g++ -std=c++17 -Wshadow -Wall -o %:r % -O2 -Wno-unused-result > /dev/null && ./%:r<CR>
nnoremap <F7> :!g++ -std=c++17 -Wshadow -Wall -o %:r % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
inoremap qq <Esc>

inoremap {[ {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {{ {<CR>}<CR><Esc>kO

noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
nnoremap <leader>s :source %<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

"Recovery commands from history through FZF
nmap <leader>y :History:<CR>

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>x :bn<CR>
"" Close buffer
noremap <leader>c :Kwbd<CR>

noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

vmap < <gv
vmap > >gv

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> <F8> :NERDTreeFocus<CR>

nnoremap n nzzzv
nnoremap N Nzzzv

" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <Space> za<CR>

tnoremap <silent> <Esc> <C-\><C-n>
tnoremap <silent> <leader>q <Esc>:FloatermKill<CR>
let g:floaterm_wintype = 'normal'

""" Configuration example
let g:floaterm_keymap_new    = '<F9>'
" let g:floaterm_keymap_kill    = '<F6>'
let g:floaterm_keymap_toggle = '<F10>'

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='hard'  
set background=dark
silent! colorscheme dracula

"------------------------
" NERDComment CONFIG
"------------------------

let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not 

"------------------------
" NERDTree CONFIG
"------------------------

let g:NERDTreeStatusline=-1
" autocmd vimenter * NERDTree
let g:webdevicons_conceal_nerdtree_brackets=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeMinimalUI=1
let g:NERDTreeMinimalMenu=1
let g:NERDTreeMouseMode=2

" let g:NERDTreeIgnore = ['^node_modules$']

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

nnoremap <Leader>e :e ~/.config/nvim/init.vim<CR>
