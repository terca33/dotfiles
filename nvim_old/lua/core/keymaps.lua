-- [[ Basic keymaps ]]

-- See `:help vim.keymap.set()`
--
-- unmap Space to use it with Telescope
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- set horizontal split to h
vim.keymap.set('n', '<c-w>h', '<c-w>s', { noremap = true} )

-- Remap for dealing with word wrap. From TJDevrie, dont know what its doing.
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
