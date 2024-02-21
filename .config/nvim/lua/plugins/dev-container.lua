return {
  -- Setup for https://github.com/coffebar/transfer.nvim
  {
    "coffebar/transfer.nvim",
    lazy = true,
    cmd = { "TransferInit", "DiffRemote", "TransferUpload", "TransferDownload", "TransferDirDiff", "TransferRepeat" },
    opts = {},
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>"] = {
          k = {
            name = "sync",
            d = { "<cmd>TransferDownload<cr>", "Download from remote server (scp)" },
            u = { "<cmd>TransferUpload<cr>", "Upload to remote server (scp)" },
            f = { "<cmd>DiffRemote<cr>", "Diff file with remote server (scp)" },
            i = { "<cmd>TransferInit<cr>", "Init/Edit Deployment config" },
            r = { "<cmd>TransferRepeat<cr>", "Repeat transfer command" },
          },
        },
      },
    },
  },

  -- Setup for https://github.com/KenN7/vim-arsync
  -- {
  --   "kenn7/vim-arsync",
  --   dependencies = {
  --     "prabirshrestha/async.vim",
  --   },
  -- },
  --
  -- {
  --   "folke/which-key.nvim",
  --   opts = {
  --     defaults = {
  --       ["<leader>"] = {
  --         k = {
  --           name = "sync",
  --           d = { "<cmd>ARsyncDown<cr>", "Download remote to local" },
  --           u = { "<cmd>ARsyncUp<cr>", "Upload local to remote" },
  --           i = { "<cmd>ARshowConf<cr>", "Show detected configuration" },
  --         },
  --       },
  --     },
  --   },
  -- },
}
