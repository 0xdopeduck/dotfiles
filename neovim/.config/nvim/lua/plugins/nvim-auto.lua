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

