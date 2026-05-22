vim.pack.add {
    "https://github.com/neovim/nvim-lspconfig"
}

-- Golang LSP
vim.lsp.config("gopls", {
    settings = {
        gopls = {
            staticcheck = true,
            gofumpt = true,
        }
    }
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "go",
    },
    callback = function(args)
        pcall(vim.lsp.enable("gopls"), args.buf)
    end,
})

-- Lua LSP
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    "vim"
                }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file(
                    "",
                    true
                ),
                checkThirdParty = false,
            },
            completion = {
                callSnippet = "Replace",
            },
            format = {
                enable = true,
            },
        }
    }
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
    },
    callback = function(args)
        pcall(vim.lsp.enable("lua_ls"), args.buf)
    end,
})

-- Autocomplete with lsp
vim.api.nvim_create_autocmd(
    "LspAttach",
    {
        callback = function(args)
            vim.lsp.completion.enable(
                true,
                args.data.client_id,
                args.buf,
                {
                    autotrigger = true,
                }
            )
        end
    }
)
