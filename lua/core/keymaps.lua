-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.api.nvim_set_keymap('n', '<leader>ye', [[:lua YankDiagnosticError()<CR>]], { noremap = true, silent = true, desc = 'Copy error' })
function YankDiagnosticError()
  vim.diagnostic.open_float()
  vim.diagnostic.open_float()
  local win_id = vim.fn.win_getid() -- get the window ID of the floating window
  vim.cmd 'normal! j' -- move down one row
  vim.cmd 'normal! VG' -- select everything from that row down
  vim.cmd 'normal! y' -- yank selected text
  vim.api.nvim_win_close(win_id, true) -- close the floating window by its ID
end

-- [[ Highlight on yank ]]
-- See `:help vim.hl.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.hl.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- TIP: Move lines of code up or down with C+k / C+j in normal and visual mode
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { desc = 'Move line up', noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move line down', noremap = true, silent = true })
vim.keymap.set('x', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up', noremap = true, silent = true })
vim.keymap.set('x', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down', noremap = true, silent = true })
