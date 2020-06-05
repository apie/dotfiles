colorscheme desert
noremap ; :
set number
set ignorecase

set noswapfile

set tabstop=4
" indenting with '>'
set softtabstop=4
" pressing tab
set shiftwidth=4

set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Add full file path to your existing statusline:  set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Display a status-bar.
set laststatus=2
syntax on
filetype plugin indent on
set paste
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *  if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set expandtab
set autoindent
set showmatch " Shows matching brackets etc.
set hlsearch
set incsearch " Incremental search highlighting

map <F2> :w<enter>:!pytest -sv %<enter>
map <F3> :w<enter>
map <F4> :w<enter>:!python3 %<enter>
map <F5> :!git diff %<enter><enter>
map <F6> :!git status<enter>
map <F7> :!git diff -w %<enter><enter>
map <F8> :w<enter>:! ./%<enter>

set wildmenu "tab complete menu showing matches (much like in fish)

"file browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3  "tree

set showcmd "show the keys you are pressing

let mapleader = "-"
"(python) comment line and move one line down (non repeatable)
nnoremap <C-\> 0i#<ESC>j
