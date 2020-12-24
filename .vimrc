"------------------------
" BASIC CONFIG
"------------------------

au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

set smartindent
set tabstop=4
set autoread
set number
set so=5
set backspace=indent,eol,start
set smarttab
set wrap
set hidden
set nobackup
set noswapfile

syntax on
let mapleader=','

" ------------------------------

nnoremap <F6> :w <bar> !g++ -std=c++17 -Wshadow -Wall % -O2 -Wno-unused-result<CR>
nnoremap <F7> :w <bar> !g++ -std=c++17 -Wshadow -Wall % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG<CR>
nnoremap <F8> :w <bar> !./a.out<CR>
inoremap qq <Esc>

inoremap {[ {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {{ {<CR>}<CR><Esc>kO
inoremap endl <<<space>"\n";<CR>

noremap YY :%y+<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

vmap < <gv
vmap > >gv

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <Leader>e :e ~/.vimrc<CR>
