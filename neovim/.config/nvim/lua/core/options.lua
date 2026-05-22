vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.updatetime = 250
vim.opt.breakindent = true
vim.opt.signcolumn = "yes:1"
vim.opt.completeopt = {
    "menu",
    "menuone",
    "popup",
    "fuzzy",
    "noselect",
}


vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
