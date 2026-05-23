vim.pack.add {
    "https://github.com/neovim/nvim-lspconfig"
}

-- Enable in-line diagnostic messages
vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Autocomplete with lsp
vim.opt.completeopt = {
    "menu",
    "menuone",
    "popup",
    "fuzzy",
    "noselect",
}

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

