local map = vim.keymap.set

vim.g.mapleader = " "

-- Files
map("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })
map("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope Live grep" })
-- map("n", "<leader>fe", "<cmd>Neotree reveal toggle<cr>", { desc = "Open Neotree" })
map("n", "<leader>tk", "<cmd>Telescope keymaps<cr>", { desc = "Telescope seach keymaps" })

--Save and Quit
map("n", "<leader>ww", "<cmd>w<cr>", { desc = "Save File" })
map("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save File and Quit" })
map("n", "<leader>qq", "<cmd>q!<cr>", { desc = "Quite without Saving" })

-- LSP format code
map("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format code with LSP" })

-- Tab completion
vim.keymap.set(
    "i",
    "<Tab>",
    function()
        local pum_visible =
            vim.fn.pumvisible()

        if pum_visible == 1 then
            return "<C-n>"
        end

        return "<Tab>"
    end,

    {
        expr = true
    }
)

vim.keymap.set(
    "i",
    "<S-Tab>",
    function()
        local pum_visible =
            vim.fn.pumvisible()

        if pum_visible == 1 then
            return "<C-p>"
        end

        return "<S-Tab>"
    end,

    {
        expr = true
    }
)
-- Move Winodes
-- map("n", "<leader>hh", "<C-w>h", { desc = "Move Left" })
-- map("n", "<leader>jj", "<C-w>j", { desc = "Move Down" })
-- map("n", "<leader>kk", "<C-w>k", { desc = "Move Up" })
-- map("n", "<leader>ll", "<C-w>l", { desc = "Move Right" })

-- Toggle
-- map("n", "<leader>ts", function()
--   vim.opt_local.spell = not vim.opt_local.spell:get()
-- end, { desc = "Toggle spell" })

-- Error Diagnostic
-- map("n", "<leader>ee", vim.diagnostic.open_float, { desc = "Show diagnostic" })
-- map("n", "<leader>ep", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
-- map("n", "<leader>en", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
