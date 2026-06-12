return {
  "okuuva/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    debounce_delay = 1000,
    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = { "InsertLeave", "TextChanged" },
      cancel_deferred_save = { "InsertEnter" },
    },
    write_all_buffers = false,
    condition = function(buf)
      local ft = vim.bo[buf].filetype
      return ft ~= "gitcommit" and vim.fn.getbufvar(buf, "&buftype") == ""
    end,
  },
  keys = {
    { "<leader>n", "<cmd>ASToggle<CR>", desc = "Toggle auto-save" },
  },
}
