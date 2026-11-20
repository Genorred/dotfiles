return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- Сборка из актуального исходного кода для поддержки свежих фич
  build = "make",
  behaviour = {
    minimize_diff = true,          -- Вырезает неизмененные строки из ответов, делая Diff аккуратным.
    focus_on_apply = "ours",       -- Автофокус на вашем коде при принятии изменений.
    auto_suggestions = false,    -- Too slow for a 4B model, disable
    auto_set_keymaps = true,
  },
-- opts = {
--   provider = "naga",
--
--   -- Используем строго актуальное поле `providers` для кастомных моделей
--   providers = {
--     naga = {
--       __inherited_from = "openai",
--       -- Обязательно передаем полный путь для OpenAI-совместимых эндпоинтов
--       endpoint = "https://api.naga.ac/v1",
--       model = "nemotron-3-ultra-550b-a55b:free",
--       timeout = 30000,
--       api_key_name = "NAGA_API_KEY",
--
--       -- Важно: Отключаем инструменты (tools), чтобы модель перестала «парсить» веб-страницы 
--       -- и слать в буфер сырой JSON/HTML мусор с сайта naga.ac
--
--       -- Все параметры генерации переносим строго внутрь `extra_request_body`
--       extra_request_body = {
--         temperature = 0.2,
--         top_p = 0.8,
--         max_tokens = 4096,
--       },
--     },
--   },
-- }
-- ,
  
opts = {
  provider = "openrouter",
  providers = {
    openrouter = {
      __inherited_from = "openai",
      endpoint = "https://openrouter.ai/api/v1",
      api_key_name = "OPENROUTER_API_KEY",
      model = "nvidia/nemotron-3-nano-omni-30b-a3b-reasoning:free",
      extra_request_body = {
        temperature = 0,
        max_tokens = 32768, -- Can go up to 65536
      },
    },
  },
}
,
  web_search_engine = {
    provider = "tavily",  -- or "serpapi", "brave", "kagi", "bing"
  },
  dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-mini/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "stevearc/dressing.nvim", -- for input provider dressing
      "folke/snacks.nvim", -- for input provider snacks
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            -- use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
}
