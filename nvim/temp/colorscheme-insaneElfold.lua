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

      -- 1. Исправляем базовую палитру темы для разделителей под табами
on_colors = function(c)
  c.border = "#0000ff"           -- Bright Blue Window Borders
  c.bg_statusline = "#121212"    -- Dark Grey

  -- Фоны
  c.bg = "#000000"               -- Pure Black
  c.bg_dark = "#000000"          -- Pure Black
  c.bg_float = "#121212"         -- Dark Grey
  c.bg_highlight = "#1c1c1c"     -- Light Hover Grey
  c.bg_popup = "#121212"         -- Dark Grey
  c.bg_search = "#008b8b"        -- Dark Cyan
  c.bg_sidebar = "#000000"       -- Pure Black
  c.bg_visual = "#1c1c1c"        -- Light Hover Grey

  -- Текст
  c.fg = "#ffffff"               -- Bright White
  c.fg_dark = "#ffffff"          -- Bright White
  c.fg_float = "#ffffff"         -- Bright White
  c.fg_gutter = "#008b8b"        -- Dark Cyan
  c.fg_sidebar = "#ffffff"       -- Bright White

  -- Акценты
  c.blue = "#0000ff"             -- Bright Blue
  c.cyan = "#00ffff"             -- Cyan
  c.green = "#00ff00"            -- Green
  c.magenta = "#ff0000"          -- Red
  c.orange = "#ffff00"           -- Yellow
  c.purple = "#008b8b"           -- Dark Cyan
  c.red = "#ff0000"              -- Red
  c.yellow = "#ffff00"           -- Yellow

  -- Разделители
  c.border_highlight = "#00ffff" -- Cyan
  c.comment = "#008b8b"          -- Dark Cyan
end,

      on_highlights = function(hl, c)
        -- Числа строк белые
        hl.LineNr = { fg = "#ede0de" }
        hl.CursorLineNr = { fg = "#ffffff", bold = true }

        -- Sidebar — всё в белых/серых тонах
        hl.SnacksExplorerFile = { fg = "#ede0de" }
        hl.SnacksExplorerDir = { fg = "#ffffff", bold = true }
        hl.SnacksExplorerGitAdded = { fg = "#ede0de" }
        hl.SnacksExplorerGitDirty = { fg = "#d8c2be" }
        hl.SnacksExplorerGitIgn = { fg = "#585B70" }
        hl.SnacksExplorerIndent = { fg = "#534341" }
        hl.SnacksExplorerLink = { fg = "#ede0de" }

        -- Заголовок "Explorer" и его рамка
        hl.SnacksWinBar = { fg = "#ede0de", bg = "NONE" }
        hl.SnacksWinBarBorder = { fg = "#ede0de", bg = "NONE" }
        hl.SnacksPickerTitle = { fg = "#ede0de", bg = "NONE" }

        -- Счётчик 31/31
        hl.SnacksPickerBorderText = { fg = "#585B70", bg = "NONE" }
        hl.FloatBorder = { fg = "#ede0de", bg = "NONE" }
        hl.FloatTitle = { fg = "#ede0de", bg = "NONE" }
        hl.Special = { fg = "#ede0de" }

        -- Рамки Snacks
        hl.SnacksPickerBorder = { fg = "#ede0de" }
        hl.SnacksPickerInputBorder = { fg = "#ede0de" }
        hl.SnacksPickerBoxBorder = { fg = "#ede0de" }
        hl.SnacksPickerBoxTitle = { fg = "#ede0de" }
        hl.SnacksPickerInputTitle = { fg = "#ede0de" }
        hl.SnacksNotifierIconWarn = { fg = "#ede0de" }

        -- Иконки файлов
        hl.MiniIconsGrey = { fg = "#ede0de" }
        hl.MiniIconsWhite = { fg = "#ffffff" }
        hl.DevIconDefault = { fg = "#ede0de" }


        -- Базовое заполнение линии вкладок (Neovim TabLine)
        hl.TabLine = { fg = "#ede0de", bg = "NONE" }
        hl.TabLineFill = { fg = "#ede0de", bg = "NONE" }
        hl.TabLineSel = { fg = "#ede0de", bg = "NONE" }
      end,
    },
  },
}
