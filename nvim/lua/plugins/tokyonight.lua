return {
  {
    "folke/tokyonight.nvim",
    opts = {
      -- стиль: "night" | "storm" | "moon" | "day"
      style = "night",

      -- НЕ делать весь фон прозрачным
      transparent = true,

      -- styles = {
      --   -- только боковые панели прозрачны
      --   sidebars = "transparent",
      --   -- плавающие окна тоже (опционально)
      --   floats = "transparent",
      -- },
      --
      -- -- какие именно окна считать «сайдбарами»
      -- sidebars = {
      --   "snacks_explorer",  -- ← это главное
      --   "neo-tree", "NvimTree",
      --   "Trouble",  "Outline",
      --   "qf",       "help",
      --   "terminal",
      -- },
    },
  },
}
