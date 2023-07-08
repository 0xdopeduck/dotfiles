require('telekasten').setup({
  home = vim.fn.expand("~/SecondBrain"), -- Put the name of your notes directory here
  image_subdir = "assets",

  extension = ".md",

  new_note_filename = "title",

  follow_creates_nonexisting = true,    -- create non-existing on follow
  dailies_create_nonexisting = true,    -- create non-existing dailies
  weeklies_create_nonexisting = true,   -- create non-existing weeklies

  -- Default sort option: 'filename', 'modified'
  sort = "filename",

  -- wiki:     ![[image name]]
  -- markdown: ![](image_subdir/xxxxx.png)
  image_link_style = "wiki",

  -- Make syntax available to markdown buffers and telescope previewers
  install_syntax = true,

  -- Tag notation: '#tag', '@tag', ':tag:', 'yaml-bare'
  tag_notation = "#tag",

  -- Previewer for media files (images mostly)
  -- "telescope-media-files" if you have telescope-media-files.nvim installed
  -- "catimg-previewer" if you have catimg installed
  -- "viu-previewer" if you have viu installed
  media_previewer = "telescope-media-files",


  -- Calendar integration
  plug_into_calendar = true,         -- use calendar integration
  calendar_opts = {
    weeknm = 1,                      -- calendar week display mode:
                                     --   1 .. 'WK01'
                                     --   2 .. 'WK 1'
                                     --   3 .. 'KW01'
                                     --   4 .. 'KW 1'
                                     --   5 .. '1'

    calendar_monday = 1,             -- use monday as first day of week:
                                     --   1 .. true
                                     --   0 .. false

    calendar_mark = 'left-fit',      -- calendar mark placement
                                     -- where to put mark for marked days:
                                     --   'left'
                                     --   'right'
                                     --   'left-fit'
  },
})

 
--  vim.keymap.set('n','<leader>zf', function() require('telekasten').find_notes() end)
--  vim.keymap.set('n','<leader>zd', function() require('telekasten').find_daily_n() end)
--  vim.keymap.set('n','<leader>zg', function() require('telekasten').search_notes() end)
--  vim.keymap.set('n','<leader>zz', function() require('telekasten').follow_link() end)
--  vim.keymap.set('n','<leader>zt', function() require('telekasten').goto_today() end)
--  vim.keymap.set('n','<leader>zw', function() require('telekasten').goto_thisweek() end)
--  vim.keymap.set('n','<leader>zw', function() require('telekasten').find_weekly_notes() end)
--  vim.keymap.set('n','<leader>zn', function() require('telekasten').new_note() end)
--  vim.keymap.set('n','<leader>zn', function() require('telekasten').new_templated_note() end)
--  vim.keymap.set('n','<leader>zy', function() require('telekasten').yank_notelink() end)
--  vim.keymap.set('n','<leader>zc', function() require('telekasten').show_calendar() end)
-- -- vim.keymap.set('n','<leader>zc', 'calendart<cr>'),
--  vim.keymap.set('n','<leader>zi', function() require('telekasten').paste_img_and_link() end)
--  vim.keymap.set('n','<leader>zt', function() require('telekasten').toggle_todo() end)
--  -- toggling todos in visual mode
--  -- vnoremap <leader>zt :lua require('telekasten').toggle_todo({ v = true })<cr>
--  vim.keymap.set('n', '<leader>zb', function () require('telekasten').show_backlinks() end)
--  vim.keymap.set('n', '<leader>zf', function() require('telekasten').find_friends() end)
--  vim.keymap.set('n', '<leader>zi', function() require('telekasten').insert_img_link({ i=true }) end)
--  vim.keymap.set('n', '<leader>zp', function() require('telekasten').preview_img() end)
--  vim.keymap.set('n', '<leader>zm', function() require('telekasten').browse_media() end)
--  vim.keymap.set('n', '<leader>#',  function() require('telekasten').show_tags() end)
-- 
