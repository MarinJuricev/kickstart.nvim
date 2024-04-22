return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- make sure to load this before all the other start plugins
  init = function()
    vim.cmd.colorscheme 'catppuccin'

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=none'
  end,
  config = function()
    require('catppuccin').setup {
      transparent_background = true, -- disables setting the background color.
      -- https://github.com/catppuccin/nvim#integrations
      integrations = {
        gitsigns = true,
        harpoon = true,
        indent_blankline = {
          enabled = true,
          scope_color = 'text', -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = false,
        },
        mason = true,
        noice = true,
        cmp = true,
        dap = true,
        dap_ui = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
          },
          inlay_hints = {
            background = true,
          },
        },
        notify = true,
        treesitter = true,
        telescope = {
          enabled = true,
          style = 'nvchad',
        },
        lsp_trouble = true,
        which_key = true,
      },
    }
  end,
}
