return {
  'catppuccin/nvim',
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      term_colors = false,
      color_overrides =   {
        all = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    })
    vim.cmd.colorscheme 'catppuccin'
  end,
}
