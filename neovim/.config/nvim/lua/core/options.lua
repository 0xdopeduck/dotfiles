vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.termguicolors = true
vim.opt.smoothscroll = true
vim.opt.updatetime = 250
vim.opt.breakindent = true
vim.opt.signcolumn = "yes:1"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.laststatus = 3
vim.opt.splitbelow = true
vim.opt.splitright = true
-- vim.opt.undodir = vim.fn.stdpath(data) .. "/undodir"
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.cmdheight = 0

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = "Highlighting when text is successfully yanked",
  callback = function()
    vim.hl.on_yank()
  end,
})
