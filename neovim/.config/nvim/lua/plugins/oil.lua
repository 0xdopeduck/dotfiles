vim.pack.add {
  "https://github.com/stevearc/oil.nvim.git"
}

require("oil").setup({
  -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
  -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
  default_file_explorer = true,
  -- Id is automatically added at the beginning, and name at the end
  -- See :help oil-columns
  columns = {
    "icon",
    -- "permissions",
    -- "size",
    -- "mtime",
  },
  keymaps = {
    [ "gt" ] = "actions.open_terminal",
    [ "gp" ] = "actions.preview",
    ["<C-t>"] = {
       desc = "Open terminal in current dir (new tab)",
       callback = function()
         local dir = require("oil").get_current_dir()
         if not dir then return end
         vim.cmd("tabnew | term")
         vim.cmd("startinsert")
         vim.fn.chansend(vim.b.terminal_job_id, "cd " .. dir .. " && clear\n")
       end,
     },
    ["<C-g>"] = {
       desc = "Open Ghostty tab in current dir on MacOS",
       callback = function()
         local dir = require("oil").get_current_dir()
         if not dir then return end
         local script = string.format([[
           tell application "Ghostty"
             activate
             set cfg to new surface configuration
             set initial working directory of cfg to "%s"
             new tab with configuration cfg
           end tell
         ]], dir)
         vim.fn.system({ "osascript", "-e", script })
       end,
     },
  },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
