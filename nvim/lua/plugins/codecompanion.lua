return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- 1. Explicitly tell strategies to use your newly defined adapter block
    strategies = {
      chat = {
        adapter = "openai_compatible",
        slash_commands = {
          ["file"] = {
            opts = {
              provider = "telescope", -- Options: "telescope", "mini_pick", "fzf_lua"
            },
          },
        },
      },
      adapter = "openai_compatible",
      inline = {
        keymaps = {
          accept_change = {
            modes = { n = "ga" }, -- 'ga' to Accept in Normal mode
            description = "Accept the inline edit",
          },
          reject_change = {
            modes = { n = "gr" }, -- 'gr' to Reject in Normal mode
            description = "Reject the inline edit",
          },
        },
      },
    },
    -- 2. Define the custom adapter blueprint cleanly
    adapters = {
      openai_compatible = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          env = {
            url = "http://127.0.0.1:5001", -- Correct base host
            api_key = "kobold_local", -- Mandatory parsing placeholder
          },
          schema = {
            model = {
              default = "qwen3.5:4b", -- Handled client side
            },
            max_tokens = {
              default = 4096, -- Adjust this value based on your requirements
              desc = "The maximum number of tokens to generate in the completion.",
              mapping = "parameters",
            },
          },
        })
      end,
    },
  },
  keys = {
    -- Leader maps for LazyVim
    { "<leader>aq", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle CodeCompanion Chat", mode = { "n", "v" } },
    { "<leader>ai", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions", mode = { "n", "v" } },
  },
}
