return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cucumber_language_server = {
          -- TODO: disabling mason and having a custom cmd is necessary until this PR is resolved: https://github.com/cucumber/language-server/pull/74
          mason = false,
          -- cmd = { "cucumber-language-server", "--stdio" },
          cmd = { "/Users/helgardferreira/.nvm/versions/node/v16.20.2/bin/cucumber-language-server", "--stdio" },

          filetypes = { "cucumber", "feature" },
          root_dir = require("lspconfig").util.find_git_ancestor,
          settings = {
            cucumber = {
              features = { "**/e2e/**/*.feature" },
              glue = { "**/e2e/**/*.ts" },
            },
            -- TODO: Might be unnecessary
            features = { "**/e2e/**/*.feature" },
            glue = { "**/e2e/**/*.ts" },
          },
        },
      },
    },
  },
}
