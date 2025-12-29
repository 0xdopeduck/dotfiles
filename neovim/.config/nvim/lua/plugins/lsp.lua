return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities =
        require("cmp_nvim_lsp").default_capabilities()

      -- -------------------------
      -- Go
      -- -------------------------
      vim.lsp.config("gopls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("gopls")

      -- -------------------------
      -- C / C++
      -- -------------------------
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })
      vim.lsp.enable("clangd")

      -- -------------------------
      -- Rust
      -- -------------------------
      vim.lsp.config("rust_analyzer", {
        capabilities = capabilities,
      })
      vim.lsp.enable("rust_analyzer")

      -- -------------------------
      -- YAML (CKA-friendly)
      -- -------------------------
      vim.lsp.config("yamlls", {
        capabilities = capabilities,
        settings = {
          yaml = {
            validate = true,
            hover = true,
            completion = true,
            schemas = {
              kubernetes = "*.yaml",
              ["https://json.schemastore.org/github-workflow.json"] =
                ".github/workflows/*",
              ["https://json.schemastore.org/docker-compose.json"] =
                "docker-compose*.yml",
              ["https://json.schemastore.org/ansible-playbook.json"] =
                "*playbook*.yml",
            },
          },
        },
      })
      vim.lsp.enable("yamlls")

      -- -------------------------
      -- Nix
      -- -------------------------
      vim.lsp.config("nil_ls", {
        capabilities = capabilities,
        settings = {
          ["nil"] = {
            formatting = {
              command = { "nixfmt" },
            },
          },
        },
      })
      vim.lsp.enable("nil_ls")

      -- -------------------------
      -- MARKSMAN (Telekasten-safe)
      -- -------------------------
      vim.lsp.config("marksman", {
        capabilities = capabilities,
        cmd = { "marksman", "server" },
        filetypes = { "markdown", "telekasten" },

        -- New root detection (NO lspconfig.util)
        -- root_dir = function(bufnr)
        --   local fname = vim.api.nvim_buf_get_name(bufnr)
        --   return vim.fs.root(
        --     fname,
        --     { ".marksman.toml", ".git" }
        --   )
        -- end,
      })
      vim.lsp.enable("marksman")

      -- -------------------------
      -- Bash
      -- -------------------------
      vim.lsp.config("bashls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("bashls")
    end,


  },
}
