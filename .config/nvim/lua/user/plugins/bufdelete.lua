return {
  'famiu/bufdelete.nvim',
  config = function()
    -- Keymaps
    vim.keymap.set("n", "D", "<cmd>Bdelete<CR>", { desc = "Delete current buffer not forced" })
  end,
}
