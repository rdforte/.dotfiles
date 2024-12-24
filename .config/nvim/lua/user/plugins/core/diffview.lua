-- Display Git diffs in a new window.
return {
  "sindrets/diffview.nvim",
  config = function()
    require("diffview").setup({
      view = {
        merge_tool = {
          layout = "diff3_mixed",
        },
      },
    })
    -- Keymaps
    vim.keymap.set("n", "<leader>mo", "<cmd>DiffviewOpen<cr>", { desc = "Open diffview" })
    vim.keymap.set("n", "<leader>mc", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" })
  end,
}
