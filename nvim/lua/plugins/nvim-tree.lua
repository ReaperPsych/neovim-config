return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            git = {
              unstaged = "✗",
              staged = "✓",
              untracked = "★",
              renamed = "➜",
              deleted = "✘",
              ignored = "◌",
            },
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
      view = {
        width = 30,
        side = "left",
      },
    })
  end,
}

