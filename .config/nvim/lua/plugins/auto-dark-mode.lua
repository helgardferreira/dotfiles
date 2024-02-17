return {
  "f-person/auto-dark-mode.nvim",
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.api.nvim_set_option_value("background", "dark", {
        scope = "global",
      })

      vim.cmd("colorscheme catppuccin-macchiato")
    end,
    set_light_mode = function()
      vim.api.nvim_set_option_value("background", "light", {
        scope = "global",
      })

      vim.cmd("colorscheme catppuccin-latte")
    end,
  },
}
