return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("bufferline").setup({
        options = {
          show_buffer_close_icons = true,
          show_close_icon = true,
          separator_style = "slant",
          diagnostics = "nvim_lsp",  -- Optional for diagnostics
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
            },
          },
        },
      })
    end,
  },
}

