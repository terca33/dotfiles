-- [[ Setting native options ]]

vim.o.swapfile = false

-- add colorcollumn on line 80
vim.o.colorcolumn = 80
vim.cmd[[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]]

-- Set highlight on search
vim.o.hlsearch = false

-- Turn on hybrid numbers (relative and apsolute only on current line) 
vim.wo.number = true
vim.wo.relativenumber = true

-- Expand tabs
vim.o.expandtab = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
vim.o.undodir = vim.fn.expand('$XDG_DATA_HOME/nvim/undo')
vim.o.undolevels = 10000
vim.o.undoreload = 10000

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect,noinsert'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
