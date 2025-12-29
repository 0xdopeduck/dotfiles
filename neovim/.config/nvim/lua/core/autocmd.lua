vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en"
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    local wk = require("which-key")

    wk.add({
      { "<leader>f", group = "Files" },
      { "<leader>t", group = "Toggle" },
      { "<leader>r", group = "Refactor" },
      { "<leader>c", group = "Code" },
      { "<leader>e", group = "Diagnostics" },
      { "<leader>n", group = "Notes" },
      { "<leader>q", group = "Quit" },
      { "<leader>w", group = "Save" },
    })
  end,
})
