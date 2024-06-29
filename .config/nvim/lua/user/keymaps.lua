-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--
--   NOTE: Keymaps specific to the package will be found in their own file.
--   <CR> is the same as pressing the enter key (carriage return).

local keymap = vim.keymap -- for conciseness

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Tree navigator
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Resize with arrows
keymap.set("n", "<S-Up>", ":resize +2<CR>")
keymap.set("n", "<S-Down>", ":resize -2<CR>")
keymap.set("n", "<S-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<S-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- holds onto yank so when paste over text doesnt cause the
-- text you are pasting over to become the new yank.
keymap.set("v", "p", '"_dP')

-- Terminal --
-- Better terminal navigation
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l")

-- Exit highlight mode
keymap.set("n", "<leader><ESC>", "<cmd>noh<CR>")

-- Find and replace word in file
keymap.set("n", "<leader>fw", ":%s/\\<<C-r><C-w>\\>/", { noremap = true })

-- Remamp NVIM v0.10.0 comment toggle
keymap.set("n", "'", ":norm gcc<CR>", { remap = true })
keymap.set("v", "'", ":norm gcc<CR>", { remap = true })
