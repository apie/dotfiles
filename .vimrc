set noswapfile
set ignorecase
set tabstop=2
set shiftwidth=2
set expandtab
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Add full file path to your existing statusline:  set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Display a status-bar.
set laststatus=2
syntax on
set number
colorscheme desert
syntax on
filetype plugin indent on
set paste
set autoindent
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *  if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
noremap ; :
map <F3> :w<enter>
map <F4> :w<enter>:!python3 %<enter>
map <F5> :!git diff %<enter><enter>

