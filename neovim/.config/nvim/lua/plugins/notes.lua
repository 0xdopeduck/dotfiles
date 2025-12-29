return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-symbols.nvim",
    },
      -- Main paths
    config = function()
        require("telekasten").setup({

            home = vim.fn.expand("~/Notes/zettelkasten"),
            dailies = vim.fn.expand("~/Notes/daily"),
            weeklies = vim.fn.expand("~/Notes/weekly"),
            monthlies = vim.fn.expand("~/Notes/monthly"),
            quarterlies = vim.fn.expand("~/Notes/quarterly"),
            yearlies = vim.fn.expand("~/Notes/yearly"),
            templates = vim.fn.expand("~/Notes/templates"),

            -- Specific note templates
              -- set to `nil` or do not specify if you do not want a template
            template_new_note = '~/Notes/templates/new-note.md',      -- template for new notes
            -- template_new_daily = '/path/to/file',     -- template for new daily notes
            -- template_new_weekly = '/path/to/file',    -- template for new weekly notes
            -- template_new_monthly = '/path/to/file',   -- template for new monthly notes
            -- template_new_quarterly = '/path/to/file', -- template for new quarterly notes
            -- template_new_yearly = '/path/to/file',    -- template for new yearly notes

            -- Image subdir for pasting
              -- subdir name
              -- or nil if pasted images shouldn't go into a special subdir
            image_subdir = "img",

            -- File extension for note files
            extension    = ".md",

            -- Generate note filenames. One of:
              -- "title" (default) - Use title if supplied, uuid otherwise
              -- "uuid" - Use uuid
              -- "uuid-title" - Prefix title by uuid
              -- "title-uuid" - Suffix title with uuid
            new_note_filename = "uuid-title",
            -- file uuid type ("rand" or input for os.date such as "%Y%m%d%H%M")
            uuid_type = "%Y%m%d%H%M",
            -- UUID separator
            uuid_sep = "-",

            -- Flags for creating non-existing notes
            follow_creates_nonexisting = true,     -- create non-existing on follow
            dailies_create_nonexisting = true,     -- create non-existing dailies
            weeklies_create_nonexisting = true,    -- create non-existing weeklies
            monthlies_create_nonexisting = true,   -- create non-existing monthlies
            quarterlies_create_nonexisting = true, -- create non-existing quarterlies
            yearlies_create_nonexisting = true,    -- create non-existing yearlies
            external_link_follow = true, 

            -- skip telescope prompt for goto_today and goto_thisweek
            journal_auto_open = false,

            -- Image link style",
              -- wiki:     ![[image name]]
              -- markdown: ![](image_subdir/xxxxx.png)
            image_link_style = "wiki",

            -- Default sort option: 'filename', 'modified'
            sort = "filename",

            -- Make syntax available to markdown buffers and telescope previewers
            install_syntax = true,

            -- Tag notation: '#tag', '@tag', ':tag:', 'yaml-bare'
            tag_notation = "#tag",

            -- When linking to a note in subdir/, create a [[subdir/title]] link
            -- instead of a [[title only]] link
            subdirs_in_links = true,

            -- Command palette theme: dropdown (window) or ivy (bottom panel)
            command_palette_theme = "window",

            -- Tag list theme:
              -- get_cursor (small tag list at cursor)
              -- dropdown (window)
              -- ivy (bottom panel)
            show_tags_theme = "window",

            -- Previewer for media files (images mostly)
              -- "telescope-media-files" if you have telescope-media-files.nvim installed
              -- "catimg-previewer" if you have catimg installed
              -- "viu-previewer" if you have viu installed
            media_previewer = "telescope-media-files",
            auto_set_filetype = false,

            -- Customize insert image and preview image files list. This is useful
            -- to add optional filetypes into filtered list (for example
            -- telescope-media-files optionally supporting svg preview)
            media_extensions = {
              ".png",
              ".jpg",
              ".bmp",
              ".gif",
              ".pdf",
              ".mp4",
              ".webm",
              ".webp",
            },

            -- -- Calendar integration
            -- plug_into_calendar = true,         -- use calendar integration
            -- calendar_opts = {
            --   weeknm = 4,                      -- calendar week display mode:
            --                                    --   1 .. 'WK01'
            --                                    --   2 .. 'WK 1'
            --                                    --   3 .. 'KW01'
            --                                    --   4 .. 'KW 1'
            --                                    --   5 .. '1'
            --
            --   calendar_monday = 1,             -- use monday as first day of week:
            --                                    --   1 .. true
            --                                    --   0 .. false
            --
            --   calendar_mark = 'left-fit',      -- calendar mark placement
            --                                    -- where to put mark for marked days:
            --                                    --   'left'
            --                                    --   'right'
            --                                    --   'left-fit'
            -- },

            -- vaults = {
            --   personal = {
            --     -- configuration for personal vault. E.g.:
            --     home = vim.fn.expand("~/Notes/zettlekasten"),
            --   }
            -- },
            
            -- Specify a clipboard program to use
            -- clipboard_program = "", -- xsel, xclip, wl-paste, osascript
            
        })


        -- Launch panel if nothing is typed after <leader>z
        vim.keymap.set("n", "<leader>np", "<cmd>Telekasten panel<CR>", { desc = "Notes panel" })

        -- Most used functions
        vim.keymap.set("n", "<leader>nf", "<cmd>Telekasten find_notes<CR>", { desc = "Find Notes" })
        vim.keymap.set("n", "<leader>ng", "<cmd>Telekasten search_notes<CR>", { desc = "Search Notes" })
        vim.keymap.set("n", "<leader>nd", "<cmd>Telekasten goto_today<CR>", { desc = "Goto Today Note" })
        vim.keymap.set("n", "<leader>nz", "<cmd>Telekasten follow_link<CR>", { desc = "Follow Link" })
        vim.keymap.set("n", "<leader>nn", "<cmd>Telekasten new_note<CR>", { desc = "New Note" })
        vim.keymap.set("n", "<leader>nt", "<cmd>Telekasten new_templated_note<CR>", { desc = "New Templated Note" })
        vim.keymap.set("n", "<leader>nc", "<cmd>Telekasten show_calendar<CR>", { desc = "Show Calendar" })
        vim.keymap.set("n", "<leader>nb", "<cmd>Telekasten show_backlinks<CR>", { desc = "Show Backlinks"})
        vim.keymap.set("n", "<leader>nI", "<cmd>Telekasten insert_img_link<CR>", { desc = "Insert Image Link" })

        -- Call insert link automatically when we start typing a link
        vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
    end,
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}

