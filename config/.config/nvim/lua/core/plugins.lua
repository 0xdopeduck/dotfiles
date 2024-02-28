local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  { 'rebelot/kanagawa.nvim', priority = 1000 },

  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate", priority = 100 },
  { 'nvim-treesitter/playground', lazy = true },

  { 'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-media-files.nvim' },
    priority = 90 },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },


  { 'tpope/vim-fugitive', lazy = true, priority = 5 },

  { 'mbbill/undotree', lazy = true },

  {
    "folke/zen-mode.nvim",
    --lazy = true,
    dependencies = "folke/twilight.nvim",
  },

  {
    'renerocksai/telekasten.nvim',
    dependencies = {'nvim-telescope/telescope.nvim', 'renerocksai/calendar-vim'}
  },

  {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  },

  {
      "ixru/nvim-markdown",
      ft = 'markdown',
  }

}

local opts = {}

require("lazy").setup(plugins, opts)
