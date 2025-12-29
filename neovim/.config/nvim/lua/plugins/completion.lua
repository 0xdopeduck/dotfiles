return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "onsails/lspkind.nvim", -- icons + UI
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      cmp.setup({
        completion = {
          completeopt = "menu,menuone,noinsert",
        },

        snippet = {
          expand = function(args)
            -- If you add snippets later, wire them here
          end,
        },

        mapping = cmp.mapping.preset.insert({
          -- TAB / SHIFT+TAB
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Confirm
          ["<CR>"] = cmp.mapping({
              i = function(fallback)
                if cmp.visible() and cmp.get_selected_entry() then
                  cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace })
                else
                  fallback()
                end
              end,
              s = cmp.mapping.confirm({ select = true }),
            }),

          -- ["<CR>"] = cmp.mapping(function(fallback)
          --     if cmp.visible() and cmp.get_active_entry() then
          --       cmp.confirm({ select = false })
          --     else
          --       fallback()
          --     end
          --   end, { "i", "s" }),


          -- Scroll docs
          ["<C-d>"] = cmp.mapping.scroll_docs(4),
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
        }),

        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "…",
          }),
        },

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })

    end,
  },
}
