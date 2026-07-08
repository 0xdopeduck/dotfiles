vim.pack.add {
    "https://github.com/neovim/nvim-lspconfig"
}

-- Note
-- Please add any lsp added here to the blink_cmp.lua file to get autocomplete
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

-- HTML LSP
vim.lsp.config("html", {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html" },
    root_markers = { ".git" },
    settings = {},
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "html",
    },
    callback = function(args)
        pcall(vim.lsp.enable("html"), args.buf)
    end,
})

