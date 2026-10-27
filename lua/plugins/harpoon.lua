return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "<leader>ha",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon: Add file",
    },
    {
      "<leader>he",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon: Explore",
    },
    {
      "<leader>h2",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "Harpoon: File 1",
    },
    {
      "<leader>h3",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon: File 2",
    },
    {
      "<leader>h4",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon: File 3",
    },
    {
      "<leader>h5",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon: File 4",
    },
    {
      "<leader>h6",
      function()
        require("harpoon"):list():select(5)
      end,
      desc = "Harpoon: File 5",
    },
    {
      "<leader>h7",
      function()
        require("harpoon"):list():select(6)
      end,
      desc = "Harpoon: File 6",
    },
  },
}
