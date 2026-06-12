return {
  -- 1. Настройка прозрачности специально для встроенной темы habamax
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        -- Создаем автокоманду, которая уберет фон при загрузке habamax
        vim.api.nvim_create_autocmd("ColorScheme", {
          pattern = "habamax",
          callback = function()
            local hl_groups = {
              -- "Normal", "NormalFloat", "FloatBorder", "SignColumn", 
              -- "LineNr", "CursorLineNr", "StatusLine", "StatusLineNC", "NeoTreeNormal"
            }
            for _, group in ipairs(hl_groups) do
              vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
            end
          end,
        })
        
        -- Запускаем саму тему
        vim.cmd([[colorscheme habamax]])
      end,
    },
  },
}
