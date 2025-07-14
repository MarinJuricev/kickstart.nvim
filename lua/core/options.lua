-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true
-- Make line numbers default
vim.o.relativenumber = true
vim.o.number = true
vim.o.swapfile = false

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable undo/redo changes even after closing and reopening a file
vim.opt.undofile = true

-- Enable smooth scrolling
vim.opt.smoothscroll = true

-- Sync clipboard between OS and Neovim.
-- Schedule the setting after `UiEnter` because it can increase startup-time.
-- Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
-- Concealer for Obsidian
vim.o.conceallevel = 2
-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
