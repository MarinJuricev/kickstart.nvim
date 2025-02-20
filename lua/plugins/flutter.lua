return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = true,
  ft = { 'dart' },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('flutter-tools').setup {
      fvm = true,
      debugger = {
        enabled = false,
        run_via_dap = false,
      },
      widget_guides = {
        enabled = true,
      },
      lsp = {
        -- Additional LSP-specific configuration if needed
      },
    }
    -- Load the Telescope Flutter extension safely with pcall
    pcall(require('telescope').load_extension, 'flutter')
    -- Optional: Create a key mapping to trigger the Flutter commands via Telescope
    vim.keymap.set('n', '<leader>fl', '<cmd>Telescope flutter commands<CR>', { desc = 'Flutter Commands' })
  end,
}
