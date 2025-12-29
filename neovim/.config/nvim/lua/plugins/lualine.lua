local function lsp_name()
    local buf_clients = vim.lsp.get_clients({ bufnr = 0 })
    if #buf_clients == 0 then
      return ""
    end
    return "  " .. buf_clients[1].name
end

return {
  {

    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "auto",
        icons_enabled = true,
        globalstatus = true, -- single statusline
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "dashboard", "alpha", "starter" },
        },
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            path = 1, -- relative path (great for notes)
            symbols = {
              modified = " ●",
              readonly = " ",
              unnamed = "[No Name]",
            },
          },
        },

        lualine_x = {
          {
            lsp_name,
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = "E ", warn = "W ", info = "I ", hint = "H " },
          },
          "encoding",
          "filetype",
        },

        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      tabline = {
          lualine_a = { "tabs" },
          lualine_b = {},
          lualine_c = {},
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}

