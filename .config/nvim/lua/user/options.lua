local options = {
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 2, -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0, -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  mouse = "a", -- allow the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0, -- hide the tab bar, because we can see the file names in the statusline
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  -- termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true, -- enable persistent undo
  updatetime = 300, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
  cursorline = true, -- highlight the current line
  number = true, -- set numbered lines
  relativenumber = false, -- set relative numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  scrolloff = 8, -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  laststatus = 0, -- always hide the status line
}

-- don't give |ins-completion-menu| messages
vim.opt.shortmess:append("c")

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Autowrap left and right to next line
-- When navigating left and right on a line, the default behavior is to stop when you reach the end of the line.
-- This allows the cursor to wrap around to the next line.
vim.cmd("set whichwrap+=<,>,[,],h,l")
-- when you use commands that operate on words (like w to move to the next word or dw to delete a word),

-- Incude '-' as part of word
-- a string like foo-bar will be treated as a single word rather than two separate words (foo and bar).
vim.cmd([[set iskeyword+=-]])

-- Format on save
-- this command ensures that the current buffer is automatically formatted using the LSP's formatting capabilities every time you save a file.
-- vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]]) // OLD version conflicted with SaveNoFormat function
-- BufWritePre fires when you save the buffer but before it flushes anything to disk. This gives you a chance to manipulate the buffer first.
-- vim.api.nvim_create_autocmd("LspAttach", {
-- group = vim.api.nvim_create_augroup("lsp", { clear = true }), -- create lsp group and clear commands if group already exists.
-- callback = function(args)
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- buffer = args.buf,
-- callback = function()
-- vim.lsp.buf.format({ async = false, id = args.data.client_id }) -- format before flushing to disk
-- end,
-- })
-- end,
-- })

-- Save without formatting
-- silent!: Suppresses all error messages. If any command in the sequence produces an error, it will not be displayed to the user.
-- The ! ensures that even serious errors are silenced.
-- noa: Short for noautocmd, this prefix prevents any autocommands from being executed.
-- Autocommands are automated commands that are triggered by events (e.g., file write, buffer switch).
-- w: This is the write command, which saves the current buffer to the file it is associated with.
function SaveNoFormat()
  vim.cmd("silent! noa w")
  print("saved without formatting")
end

vim.api.nvim_create_user_command("W", SaveNoFormat, {})
