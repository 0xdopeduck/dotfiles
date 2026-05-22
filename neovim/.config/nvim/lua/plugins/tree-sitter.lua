vim.pack.add {
    "https://github.com/nvim-treesitter/nvim-treesitter",
}


-- Enabling default treesitter
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "go",
    "python",
    "bash",
    "json",
    "yaml",
    "markdown",
  },

  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
