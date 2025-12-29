return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      delay = 300,

      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },

      win = {
        border = "rounded",
      },

      layout = {
        spacing = 4,
        align = "left",
      },
      disable = {
          filetypes = { "TelescopePrompt" },
      },
    },
  },
}

