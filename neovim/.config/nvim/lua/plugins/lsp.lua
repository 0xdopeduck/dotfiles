vim.pack.add {
    "https://github.com/neovim/nvim-lspconfig"
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "go",
  },
  callback = function(args)
    pcall(vim.lsp.enable("gopls"), args.buf)
  end,
})
