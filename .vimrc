colorscheme delek
noremap ; :
set encoding=utf-8
set noswapfile
set number

set wildmenu "tab complete menu showing matches (much like in fish)
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Add full file path to your existing statusline:  set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Display a status-bar.
set laststatus=2
syntax on
filetype plugin indent on
set paste
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *  if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set showcmd "show the keys you are pressing

" TAB SHIZZLE
set tabstop=4
" indenting with '>'
set softtabstop=4
" pressing tab
set shiftwidth=4
set expandtab
set autoindent

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" Searching
set showmatch " Shows matching brackets etc.
set hlsearch
set incsearch " Incremental search highlighting
set ignorecase

" File browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3  "tree

" -- HOTKEYS ---
"pascal compile with assertions, hide msg 6058, overflow checks, range checks and run
map <F1> :w<enter>:!clear; fpc -Sa -vm6058 -CO -Co -Cr -oprogram % && echo && ./program<enter>
"save + pytest
map <F2> :w<enter>:!pytest -sx %<enter>
"save
map <F3> :w<enter>
"save + run
map <F4> :w<enter>:! ./%<enter>
"git diff current file
map <F5> :!git diff %<enter>
"git status
map <F6> :!git status<enter>
"git diff current file ignoring whitespace
map <F7> :!git diff -w %<enter><enter>
"run current file with python
map <F8> :w<enter>:!python3 %<enter>

" --- MAPPINGS ---
let mapleader = "-"
"(python) comment line and move one line down (non repeatable)
nnoremap <C-\> 0i#<ESC>j
"Surround word with parentheses (non repeatable)
nnoremap <leader>h viw<esc>a)<esc>hbi(<esc>lel
"Surround word with backticks (non repeatable)
nnoremap <leader>b viw<esc>a`<esc>hbi`<esc>lel

" Enable folding of functions, methods and classes
set foldmethod=indent
set foldlevel=99
" folding with spacebar
nnoremap <space> za
