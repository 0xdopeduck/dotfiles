return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "markdown", "markdown_inline",
        "go", "cpp", "rust",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}

