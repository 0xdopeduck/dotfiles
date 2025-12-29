return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
        config = function()
            -- Preview current hunk (like git diff)
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")

            -- Stage / reset hunk
            vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>")
            vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")

            -- Navigate hunks
            vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>")
            vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>")
        end,
    },
}

