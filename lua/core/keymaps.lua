-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Harpoon
vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>he', require('harpoon.ui').toggle_quick_menu)
vim.keymap.set('n', '<leader>h1', function()
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<leader>h2', function()
  require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<leader>h3', function()
  require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<leader>h4', function()
  require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<leader>h5', function()
  require('harpoon.ui').nav_file(5)
end)
vim.keymap.set('n', '<leader>h6', function()
  require('harpoon.ui').nav_file(6)
end)
vim.keymap.set('n', '<leader>h7', function()
  require('harpoon.ui').nav_file(7)
end)
vim.keymap.set('n', '<leader>h8', function()
  require('harpoon.ui').nav_file(8)
end)
vim.keymap.set('n', '<leader>h9', function()
  require('harpoon.ui').nav_file(9)
end)
