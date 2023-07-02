require('kanagawa').setup({
    ...,
    colors = {
        theme = {
            dragon = {
                ui = {
                    bg = "none",
                    bg_gutter = "none",
                },
            },
        }
    },
    ...
})

color = color or "kanagawa-dragon"
vim.cmd.colorscheme(color)
