local map = vim.keymap.set

vim.g.mapleader = " "

-- LSP
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Navigation
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })

-- Files
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fe", "<cmd>Neotree reveal toggle<cr>", { desc = "Open Neotree" })

--Save and Quit
map("n", "<leader>ww", "<cmd>w<cr>", { desc = "Save File" })
map("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save File and Quit" })
map("n", "<leader>qq", "<cmd>q!<cr>", { desc = "Quite without Saving" })

-- Move Winodes
map("n", "<leader>hh", "<C-w>h", { desc = "Move Left" })
map("n", "<leader>jj", "<C-w>j", { desc = "Move Down" })
map("n", "<leader>kk", "<C-w>k", { desc = "Move Up" })
map("n", "<leader>ll", "<C-w>l", { desc = "Move Right" })

-- Toggle
map("n", "<leader>ts", function()
  vim.opt_local.spell = not vim.opt_local.spell:get()
end, { desc = "Toggle spell" })

-- Error Diagnostic
map("n", "<leader>ee", vim.diagnostic.open_float, { desc = "Show diagnostic" })
map("n", "<leader>ep", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "<leader>en", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- -- Launch panel if nothing is typed after <leader>z
-- map("n", "<leader>n", "<cmd>Telekasten panel<CR>", { desc = "Notes panel" })
-- -- Most used functions
-- map("n", "<leader>nf", "<cmd>Telekasten find_notes<CR>", { desc = "Find Notes" })
-- map("n", "<leader>ng", "<cmd>Telekasten search_notes<CR>", { desc = "Search Notes" })
-- map("n", "<leader>nd", "<cmd>Telekasten goto_today<CR>", { desc = "Goto Today Note" })
-- map("n", "<leader>nz", "<cmd>Telekasten follow_link<CR>", { desc = "Follow Link" })
-- map("n", "<leader>nn", "<cmd>Telekasten new_note<CR>", { desc = "New Note" })
-- map("n", "<leader>nc", "<cmd>Telekasten show_calendar<CR>", { desc = "Show Calendar" })
-- map("n", "<leader>nb", "<cmd>Telekasten show_backlinks<CR>", { desc = "Show Backlinks"})
-- map("n", "<leader>nI", "<cmd>Telekasten insert_img_link<CR>", { desc = "Insert Image Link" })
-- -- Call insert link automatically when we start typing a link
-- map("i", "[[", "<cmd>Telekasten insert_link<CR>")
