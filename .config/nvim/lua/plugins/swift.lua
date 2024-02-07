return {
  {
    "xbase-lab/xbase",
    run = "make install",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "neovim/nvm-lspconfig",
    },
    config = function()
      require("lspconfig").sourcekit.setup({})
      require("xbase").setup({
        log_level = vim.log.levels.DEBUG,
        simctl = {
          "iPhone 17",
        },
        mappings = {
          --- Whether xbase mapping should be disabled.
          enable = true,
          --- Open build picker. showing targets and configuration.
          build_picker = "<leader>xb",
          --- Open run picker. showing targets, devices and configuration
          run_picker = "<leader>xr",
          --- Open watch picker. showing run or build, targets, devices and configuration
          watch_picker = "<leader>xw", --- set to 0 to disable
          --- A list of all the previous pickers
          all_picker = "<leader>xa", --- set to 0 to disable
        },
      })
    end,
  },
}
