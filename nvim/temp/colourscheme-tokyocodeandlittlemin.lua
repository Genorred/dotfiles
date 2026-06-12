
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      sidebars = { "snacks_explorer", "Trouble", "qf", "help" },

      on_highlights = function(hl, c)
        -- числа строк белые
        hl.LineNr = { fg = "#ede0de" }
        hl.CursorLineNr = { fg = "#ffffff", bold = true }

        -- sidebar — всё в белых/серых тонах
        hl.SnacksExplorerFile = { fg = "#ede0de" }
        hl.SnacksExplorerDir = { fg = "#ffffff", bold = true }
        hl.SnacksExplorerGitAdded = { fg = "#ede0de" }
        hl.SnacksExplorerGitDirty = { fg = "#d8c2be" }
        hl.SnacksExplorerGitIgn = { fg = "#585B70" }
        hl.SnacksExplorerIndent = { fg = "#534341" }
        hl.SnacksExplorerLink = { fg = "#ede0de" }
        -- заголовок "Explorer" и его рамка
        hl.SnacksWinBar = { fg = "#ede0de", bg = "NONE" }
        hl.SnacksWinBarBorder = { fg = "#ede0de", bg = "NONE" }
        hl.SnacksPickerTitle = { fg = "#ede0de", bg = "NONE" }

        -- счётчик 31/31
        hl.SnacksPickerBorderText = { fg = "#585B70", bg = "NONE" }
        hl.FloatBorder = { fg = "#ede0de", bg = "NONE" }
        hl.FloatTitle = { fg = "#ede0de", bg = "NONE" }
        hl.WinSeparator = { fg = "#ede0de" }
        -- и на всякий случай Special (если ещё где-то оранжевое)
        hl.Special = { fg = "#ede0de" }
        -- оранжевая иконка сверху справа
        hl.SnacksPickerBorder = { fg = "#ede0de" }

        -- 2. Если хотите выделить конкретно рамку списка файлов (сделать её, например, зеленой)
        hl.SnacksPickerBoxBorder = { fg = "#ede0de" }

        -- 3. Если хотите полностью СКРЫТЬ рамки (сделать их бесшовными под цвет фона)
        -- hl.SnacksPickerBorder = { fg = c.bg_dark, bg = c.bg_dark }
        -- hl.SnacksPickerBoxBorder = { fg = c.bg_dark, bg = c.bg_dark }
        -- hl.SnacksPickerInputBorder = { fg = c.bg_dark, bg = c.bg_dark }

        -- 4. Текст заголовков на рамке
        hl.SnacksPickerBoxTitle = { fg = "#ede0de" }
        hl.SnacksPickerInputTitle = { fg = "#ede0de" }
        hl.SnacksNotifierIconWarn = { fg = "#ede0de" }
        -- иконки файлов тоже белые
        hl.MiniIconsGrey = { fg = "#ede0de" }
        hl.MiniIconsWhite = { fg = "#ffffff" }
        -- если используешь nvim-web-devicons
        hl.DevIconDefault = { fg = "#ede0de" }
      end,
    },
  },
}
