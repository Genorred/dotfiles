
return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      -- Change to false so LazyVim automatically adds git repos as projects
      manual_mode = false, 
    },
    config = function(_, opts)
      require("project_nvim").setup(opts)
      -- Force telescope to load the extension
      require("telescope").load_extension("projects")
    end,
    keys = {
      { "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Projects" },
    },
  },
}
