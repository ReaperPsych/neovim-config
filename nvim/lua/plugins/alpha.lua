return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Set a custom header with ASCII art
      dashboard.section.header.val = {
        "▗▄▄▖ ▗▄▄▄▖ ▗▄▖ ▗▄▄▖ ▗▄▄▄▖▗▄▄▖     ▗▖ ▗▖▗▄▄▄▖▗▖    ▗▄▄▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖",
        "▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌    ▐▌ ▐▌▐▌   ▐▌   ▐▌   ▐▌ ▐▌▐▛▚▞▜▌▐▌   ",
        "▐▛▀▚▖▐▛▀▀▘▐▛▀▜▌▐▛▀▘ ▐▛▀▀▘▐▛▀▚▖    ▐▌ ▐▌▐▛▀▀▘▐▌   ▐▌   ▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘",
        "▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌▐▌   ▐▙▄▄▖▐▌ ▐▌    ▐▙█▟▌▐▙▄▄▖▐▙▄▄▖▝▚▄▄▖▝▚▄▞▘▐▌  ▐▌▐▙▄▄▖",
     }

      -- Set up some quick menu options (optional)
      dashboard.section.buttons.val = {
        dashboard.button("o", "  Open file", ":Telescope find_files <CR>"),
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),

      }

      -- Set up footer (optional)
      dashboard.section.footer.val = "🚀 Neovim is ready!"

      alpha.setup(dashboard.opts)
    end,
  }
}

