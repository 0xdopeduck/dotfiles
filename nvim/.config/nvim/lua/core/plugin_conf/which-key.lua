
local wk = require("which-key")

local mappings = {
        f = {
                name = "Files",
                f = { "<cmd>Telescope find_files hidden=true<cr>", "Find files in pwd"},
                s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Fuzzy search in buffer"},
                e = { "<cmd>Ex<cr>", "File Explorer"},
                w = { "<cmd>w<cr>", "Write/Save files"},
        },

        p = {
                name = "Project",
                f = { "<cmd>Telescope find_files hidden=true<cr>", "Find files in project folder"},
                s = { "<cmd>lua require('telescope.builtin').grep_string({search = vim.fn.input(' Grep > ')})<cr>", "Searching String in project folders"},
        },

        b = {
                name = "Buffer",
                f = { "<cmd>Telescope buffers preview=false<cr>", "Listing loaded buffers"}
        },

        z = {
                name = "Telekasten",

                f = {
                    name = "Find",
                    n = { "<cmd>Telekasten find_notes<cr>", "Find notes"},
                    d = { "<cmd>Telekasten find_daily_notes<cr>", "Find Daily notes"},
                    w = { "<cmd>Telekasten find_weekly_notes<cr>", "Search weekly notes"},
                    f = { '<cmd>Telekasten find_friends<cr>', "Find Friends of note"},
                },

                s = { "<cmd>Telekasten search_notes<cr>", "Fuzzy search all notes"},
                o = { "<cmd>Telekasten follow_link<cr>", "Follow links"},

                g = {
                    name = "GoTo",
                    t = { "<cmd>Telekasten goto_today<cr>", "Go to today's note"},
                    w = { "<cmd>Telekasten goto_thisweek<cr>", "Go to this week's note"},
                },

                n = { "<cmd>Telekasten new_note<cr>", "Create a new note"},
                N = { "<cmd>Telekasten new_templated_note<cr>", "Create a new note with templates"},

                y = { "<cmd>Telekasten yank_notelink<cr>", "Yank Note link"},

                c = { "<cmd>Telekasten show_calendar<cr>", "Show calendar"},

                t = { "<cmd>Telekasten toggle_todo<cr>", "Toggle Todo"},

                b = { "<cmd>Telekasten show_backlinks<cr>", "Show Backlinks"},

                i = {
                    name = "Image",
                    p = { "<cmd>Telekasten paste_img_and_link<cr>", "Paste image and link it"},
                    l = { "<cmd>Telekasten insert_img_link<cr>", "Link an existing image"},
                    v = { "<cmd>Telekasten preview_img<cr>", "Preview Image"},
                },
                m = { "<cmd>Telekasten browse_media<cr>", "Brows Media"},

                T = { "<cmd>Telekasten show_tags<cr>", "Show tags"},

                p = { "<cmd>Telekasten panel<cr>", "Command palette"},
                v = { "<cmd>Telekasten switch_vault<cr>", "Switch Vault"},
        },

        v = {
                name = "View",
                z = { '<cmd>ZenMode<cr>', 'Toggle ZenMode'},
        },

        ['q'] = { '<cmd>q<cr>', 'Close buffer'},

}

local opts = {
        prefix = '<leader>',
}

wk.register(mappings, opts)
