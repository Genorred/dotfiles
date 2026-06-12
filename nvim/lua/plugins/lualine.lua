return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local icons = LazyVim.config.icons
    return {
      options = {
        theme = "auto",
        globalstatus = true,
        disabled_filetypes = {
          statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" },
        },
      },
      sections = {
        -- lualine_a = { "mode" },
        -- lualine_b = { "branch" },
        -- lualine_c = {
        --   LazyVim.lualine.root_dir(),
        --   { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        --   { LazyVim.lualine.pretty_path() },
        -- },
        -- lualine_x = {
        --   { "diagnostics" },
        --   { "diff" },
        --   { "encoding" },
        --   { "fileformat" },
        --   { "filetype" },
        -- },
        -- lualine_y = { "progress" },
        -- lualine_z = { "location" },
      },
    }
  end,
}
