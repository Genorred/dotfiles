return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      -- This maps kdlfmt to your KDL files
      kdl = { "kdlfmt" },
    },

  },
}
