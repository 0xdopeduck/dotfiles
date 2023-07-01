require('kanagawa').setup({
    ...,
    colors = {
        theme = {
            dragon = {
                ui = {
                    bg = "none",
                },
            },
        }
    },
    ...
})

color = color or "kanagawa-dragon"
vim.cmd.colorscheme(color)
