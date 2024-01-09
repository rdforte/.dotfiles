return {
  "lewis6991/hover.nvim",
  config = function()
    require("hover").setup({
      init = function()
        require("hover.provider.lsp")
      end,
      preview_opts = {
        border = 'single'
      },
      -- Whether the contents of a currently open hover window should be moved
      -- to a :h preview-window when pressing the hover keymap.
      preview_window = false,
      title = true,
      mouse_providers = {
        'LSP'
      },
      mouse_delay = 1000
    })

    -- Keymaps
    vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
  end,
}
