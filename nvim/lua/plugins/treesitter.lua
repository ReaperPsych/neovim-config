-- plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
		ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "python", "css", "rust", "javascript", "html" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
    {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
      local cmp = require("cmp")
      local npairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", npairs.on_confirm_done())
    end
  }
}
