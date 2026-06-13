return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  keys = {
    -- Open / switch vault workspace inside Neovim
    { "<leader>ov", "<cmd>ObsidianWorkspace<cr>", desc = "Open Current/All Vaults" },
    { "<leader>op", "<cmd>ObsidianWorkspace personal<cr>", desc = "Open Personal Vault" },
       -- Open current note in the desktop Obsidian GUI app
    { "<leader>oo", "<cmd>ObsidianOpen<cr>", desc = "Open Note in Obsidian GUI App" },
    -- Quick search inside the current vault
    { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Obsidian Search Vault" },
  },
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
    },
  },
}
