-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--       vim.cmd.colorscheme("tokyonight-night")
--   end,
-- }

return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
