if lazyvim_docs then
  -- Set to false to disable auto format
  vim.g.lazyvim_eslint_auto_format = true
end

local auto_format = vim.g.lazyvim_eslint_auto_format == nil or vim.g.lazyvim_eslint_auto_format

return {
  {
    "neovim/nvim-lspconfig",
    -- other settings removed for brevity
    opts = {
      ---@type table<string, vim.lsp.Config>
      servers = {
        eslint = {
          settings = {
            -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
            workingDirectories = { mode = "auto" },
            format = auto_format,
          },
        },
      },
      setup = {
        eslint = function()
          if not auto_format then
            return
          end

          local function get_client(buf)
            return vim.lsp.get_clients({ name = "eslint", bufnr = buf })[1]
          end

          local formatter = LazyVim.lsp.formatter({
            name = "eslint: EslintFixAll",
            primary = false,
            priority = 200,
            filter = "eslint",
            format = function(buf)
              local client = get_client(buf)

              --[[
                Older versions of the ESLint language server send push diagnostics rather than using pull.
                We support both for backwards compatibility.
              ]]
              if client then
                local push_diagnostics =
                  vim.diagnostic.get(buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id) })
                local pull_diagnostics =
                  vim.diagnostic.get(buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id, true) })
                if (#pull_diagnostics + #push_diagnostics) > 0 then
                  vim.cmd("LspEslintFixAll")
                end
              end
            end,
          })

          -- register the formatter with LazyVim
          LazyVim.format.register(formatter)
        end,
      },
    },
  },
}
