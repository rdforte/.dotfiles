-- Configure colour scheme.
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- load the color scheme
    vim.cmd([[colorscheme tokyonight-moon]])
  end,
}
