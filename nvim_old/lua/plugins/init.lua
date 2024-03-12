-- here will be put plugin specs that don't require any configuration for my needs
-- to disable just comment them

return {
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- vim-tmux-navigator. Defaults are ok
  'christoomey/vim-tmux-navigator',

  -- Useful plugin to show pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim' },

}

