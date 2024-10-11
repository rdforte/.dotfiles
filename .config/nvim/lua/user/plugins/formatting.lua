-- Configure formatting. Not really needed for Go but helpful for json, lua, markdown, etc.
return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        go = { "gofumpt", "goimports-reviser" },
      },
      format_on_save = {
        lsp_fallback = false, -- Disable LSP formatting on save, We want all formatting to be handled by Conform.
        async = false,
        timeout_ms = 2000,
      },
    })

    -- Keymaps mp - make pretty
    -- vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    -- conform.format({
    -- lsp_fallback = true,
    -- async = false,
    -- timeout_ms = 3000,
    -- })
    -- end, { desc = "Format file or range (in visual mode)" })
  end,
}
