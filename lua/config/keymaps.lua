-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>sf", LazyVim.pick("files"), {
  desc = "Find Files",
})

vim.keymap.set("n", "<leader>ye", function()
  local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
  local messages = vim.tbl_map(function(d)
    return d.message
  end, diagnostics)
  vim.fn.setreg("+", table.concat(messages, "\n"))
end, { desc = "Copy error" })
