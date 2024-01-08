-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

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
keymap.set("n", "<S-d>", ":bdelete<CR>")

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

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- Debugger
keymap.set("n", "<leader>ds", "<cmd>DapContinue<CR>")                        -- debug start
keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>")                -- debug breakpoint
keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>")                        -- debug into
keymap.set("n", "<leader>do", "<cmd>DapStepOut<CR>")                         -- debug out
keymap.set("n", "<leader>dn", "<cmd>DapStepOver<CR>")                        -- debug next
keymap.set("n", "<leader>dt", "<cmd>DapTerminate<CR>")                       -- debug terminate
keymap.set("n", "<leader>dg", "<cmd>lua require('dap-go').debug_test()<CR>") -- debug individual test closest to cursor. uses dap-go

-- LSP
-- lsp keymaps are in plugins/lsp/lsp-config.lua
