vim.pack.add {
    "https://github.com/catppuccin/nvim.git",
    -- "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
}

vim.cmd.colorscheme('catppuccin')


-- require("lualine").setup({
--   options = {
--     theme = "auto",
--     icons_enabled = true,
--     globalstatus = true, -- single statusline
--     component_separators = { left = "│", right = "│" },
--     section_separators = { left = "", right = "" },
    -- disabled_filetypes = {
    --   statusline = { "dashboard", "alpha", "starter" },
    -- },
  -- },

  -- sections = {
    -- lualine_a = { "mode" },
    -- lualine_b = { "branch" },
    -- lualine_c = {
    --   {
    --     "filename",
    --     path = 1, -- relative path (great for notes)
    --     symbols = {
    --       modified = " ●",
    --       readonly = " ",
    --       unnamed = "[No Name]",
    --     },
    --   },
    -- },

  --   lualine_x = {
  --     {
  --       lsp_name,
  --       "diagnostics",
  --       sources = { "nvim_diagnostic" },
  --       symbols = { error = "E ", warn = "W ", info = "I ", hint = "H " },
  --     },
  --     "encoding",
  --     "filetype",
  --   },
  --
  --   lualine_y = { "progress" },
  --   lualine_z = { "location" },
  -- },
  -- tabline = {
  --     lualine_a = { "tabs" },
  --     lualine_b = {},
  --     lualine_c = {},
  -- },
  --
  -- inactive_sections = {
  --   lualine_a = {},
  --   lualine_b = {},
  --   lualine_c = {
  --     {
  --       "filename",
  --       path = 1,
  --     },
  --   },
  --   lualine_x = {},
  --   lualine_y = {},
  --   lualine_z = {},
  -- },
-- })
