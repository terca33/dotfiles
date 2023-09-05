" set clipboard to work normally
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

" set horizontal split to h
nnoremap <c-w>h <c-w>s

"""""""""""
" Plugins "
"""""""""""

call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
"    Plug 'chrisbra/csv.vim'
"    Plug 'simeji/winresizer'
"    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"    Plug 'junegunn/fzf.vim'
"    Plug 'simnalamburt/vim-mundo'
    Plug 'christoomey/vim-tmux-navigator'
"    Plug 'neovim/nvim-lspconfig'
"    Plug 'hrsh7th/nvim-cmp'
"    Plug 'nvim-lua/plenary.nvim'
"    Plug 'nvim-telescope/telescope.nvim'
    Plug 'arcticicestudio/nord-vim'
"    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" set termguicolors
colorscheme nord

" remaping of Plugin keys
" let g:winresizer_start_key="<leader>w"
