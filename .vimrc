colorscheme desert
noremap ; :
set number
set ignorecase

set noswapfile

set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces

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
set softtabstop=4
set autoindent
set showmatch " Shows matching brackets etc.
set incsearch " Incremental search highlighting
map <F2> :w<enter>:!pytest -sv %<enter>
map <F3> :w<enter>
map <F4> :w<enter>:!python3 %<enter>
map <F5> :!git diff %<enter><enter>
map <F6> :!git status<enter>
map <F7> :!git diff -w %<enter><enter>

filetype plugin on

