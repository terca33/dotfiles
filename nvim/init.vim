" set ckipboard to work normally
set clipboard+=unnamedplus

" turn of arrow keys to force myself using hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set noswapfile
" save undo-trees in files (so you cant undo even after closing it)
set undofile
set undodir=$HOME/.config/nvim/undo

"number of undo saved
set undolevels=10000
set undoreload=10000

" se line numbers
set number

"use 4 spaces instead of tab ()
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"copy indent from current line when starting newline
set autoindent
