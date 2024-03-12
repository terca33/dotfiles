-- Add indentation guides even on blank lines
return {
  'lukas-reineke/indent-blankline.nvim',
  -- See `:help indent_blankline.txt`
  opts = {
    char = '┊',
    show_trailing_blankline_indent = false,
  },
}
