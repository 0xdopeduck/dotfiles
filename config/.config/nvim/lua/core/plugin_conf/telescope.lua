-- local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>pf', function() 
--        builtin.find_files({hidden=true})
--end)
-- vim.keymap.set('n', '<leader>vb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find, {})
-- vim.keymap.set('n', '<leader>fsh', builtin.search_history, {})
-- vim.keymap.set('n', '<leader>ss', builtin.spell_suggest, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input(" Grep > ") });
-- end)


-- Readup and try out if the standalone lsp keybindings are better or using telescope is better


require'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      -- find command (defaults to `fd`)
      find_cmd = "rg"
    }
  },
}
