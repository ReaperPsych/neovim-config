return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      -- Python setup with Pyright
      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      -- CSS setup with CSS Language Server
      lspconfig.cssls.setup({
        capabilities = capabilities
      })

      -- HTML setup with HTML Language Server
      lspconfig.html.setup({
        capabilities = capabilities
      })

      -- Rust setup with Rust Analyzer
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })

      -- JavaScript setup with TS Server
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })

      -- Java setup with Java Language Server (assuming you have installed it)
      lspconfig.jdtls.setup({
        capabilities = capabilities
      })

      -- Go setup with Go Language Server
      lspconfig.gopls.setup({
        capabilities = capabilities
      })

      -- Key mappings for LSP functions
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}

