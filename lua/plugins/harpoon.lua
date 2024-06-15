return {
  -- https://github.com/ThePrimeagen/harpoon
  'ThePrimeagen/harpoon',
  branch = 'master',
  event = 'VeryLazy',
  keys = function(_, keys)
    local harpoonMark = require 'harpoon.mark'
    local harpoonUi = require 'harpoon.ui'

    return {
      { '<leader>ha', harpoonMark.add_file, desc = '[H]arpoon [A]dd' },
      { '<leader>he', harpoonUi.toggle_quick_menu, desc = '[H]arpoon [E]xplore' },
      {
        '<leader>h2',
        function()
          harpoonUi.nav_file(1)
        end,
        desc = '[H]arpon 1',
      },
      {
        '<leader>h3',
        function()
          harpoonUi.nav_file(2)
        end,
        desc = '[H]arpon 2',
      },
      {
        '<leader>h4',
        function()
          harpoonUi.nav_file(3)
        end,
        desc = '[H]arpon 3',
      },
      {
        '<leader>h5',
        function()
          harpoonUi.nav_file(4)
        end,
        desc = '[H]arpon 4',
      },
      unpack(keys),
    }
  end,
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    'nvim-lua/plenary.nvim',
  },
  opts = {
    menu = {
      width = 120,
    },
  },
}
