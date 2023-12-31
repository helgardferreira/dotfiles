return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 30,
      },
    },
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")

      -- "   ▄█    █▄       ▄████████  ▄█          ▄██████▄     ▄████████    ▄████████ ████████▄  ",
      -- "  ███    ███     ███    ███ ███         ███    ███   ███    ███   ███    ███ ███   ▀███ ",
      -- "  ███    ███     ███    █▀  ███         ███    █▀    ███    ███   ███    ███ ███    ███ ",
      -- " ▄███▄▄▄▄███▄▄  ▄███▄▄▄     ███        ▄███          ███    ███  ▄███▄▄▄▄██▀ ███    ███ ",
      -- "▀▀███▀▀▀▀███▀  ▀▀███▀▀▀     ███       ▀▀███ ████▄  ▀███████████ ▀▀███▀▀▀▀▀   ███    ███ ",
      -- "  ███    ███     ███    █▄  ███         ███    ███   ███    ███ ▀███████████ ███    ███ ",
      -- "  ███    ███     ███    ███ ███▌    ▄   ███    ███   ███    ███   ███    ███ ███   ▄███ ",
      -- "  ███    █▀      ██████████ █████▄▄██   ████████▀    ███    █▀    ███    ███ ████████▀  ",
      -- "                            ▀                                     ███    ███            ",
      -- "                                                                                        ",

      local logo = [[
██╗    ██╗███████╗██╗     ████████╗  ████╗  ███████╗ ███████╗
██║    ██║██╔════╝██║     ██╔═════╝ ██╝ ██╗ ██╔═══██╗██╔═══██╗
█████████║█████╗  ██║     ██║ ████╗████████╗███████═╣██║   ██║
██╔════██║██╔══╝  ██║     ██║   ██║██╔═══██║██╔═══██║██║   ██║
██║    ██║███████╗███████╗████████║██║   ██║██║   ██║███████╔╝
╚═╝    ╚═╝╚══════╝╚══════╝╚═══════╝╚═╝   ╚═╝╚═╝   ╚═╝╚══════╝
]]

      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  }
}
