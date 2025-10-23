return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  keys = {
    { "<leader>oo", "<cmd>ObsidianOpen<cr>", desc = "[O]bsidian [O]pen", mode = "n" },
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "[O]bsidian [N]ote", mode = "n" },
    { "<leader>og", "<cmd>ObsidianSearch<cr>", desc = "[O]bsidian [G]rep", mode = "n" },
    { "<leader>of", "<cmd>ObsidianQuickSwitch<cr>", desc = "[O]bsidian [F]iles", mode = "n" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Show location list of backlinks", mode = "n" },
    { "<leader>od", "<cmd>ObsidianToday<cr>", desc = "[O]bsidian [D]aily Note", mode = "n" },
    { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "[O]bsidian [T]emplate", mode = "n" },
    { "<leader>otc", "<cmd>ObsidianToggleCheckbox<cr>", desc = "[O]bsidian [T]oggle [C]heckbox", mode = "n" },
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = "ObsidianVault",
        path = "~/Vaults/Second Brain/",
      },
    },
    -- see below for full list of options 👇
  },
}
