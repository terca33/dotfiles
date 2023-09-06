## /after
this directory is meant for configurations that will be automatically read. No need to call them from init.lua or init.vim

## /after/plugin -- TODO !
this is custom directory where I will put plugin specific configuration so to not clutter lazy.nvim spec tables.

## /after/ftplugin
this is "official" nvim directory for filetype specific configurations. Alternative is to run autocommands with FileType event but this is much nicer. For example when 'filetype' buffer option is set to lua it will read lua.lua or lua.vim (dont put both)

Use local options for setting:
:setlocal (in .vim)
vim.opt_local (in .lua)
vim.api.nvim_buf_set_keymap()   # for mappings

## help pages

:h ftplugin (more in-depth about this approach; not really needed for simple use cases)

:h ftplugin-special (notes about special things to use in these files)

:h lua-vim-setlocal (use vim.opt_local to set option locally)

:h after-directory (use 'after' directory so that these options are not overridden by defaults)
