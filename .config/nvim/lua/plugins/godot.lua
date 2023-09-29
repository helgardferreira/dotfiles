return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "gdscript",
          "godot_resource",
        })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- gdscript will be automatically installed with mason and loaded with lspconfig
        gdscript = {
          flags = {
            debounce_text_changes = 150,
          }
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.register({
        null_ls.builtins.diagnostics.gdlint,
        null_ls.builtins.formatting.gdformat,
      })
    end,
  },
  {
    "habamax/vim-godot",
  },
}
