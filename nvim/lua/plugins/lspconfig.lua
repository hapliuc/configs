return {
  "neovim/nvim-lspconfig",
 --[[  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lspconfig = require("lspconfig")
    lspconfig.clangd.setup({
      capabilities = capabilities,
      filetypes = {"c"}

    })

--    lspconfig.bashls.setup({
--      capabilities = capabilities
--    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              'vim',
            }
          }
        }
      }
    })

    local capabilities_html = vim.lsp.protocol.make_client_capabilities()
    capabilities_html.textDocument.completion.completionItem.snippetSupport = true
    lspconfig.html.setup({
      capabilities = capabilities_html,
    })

--    lspconfig.marksman.setup({
--      capabilities = capabilities
--    })

  lspconfig.emmet_language_server.setup({
      capabilities = capabilities
    })

--    lspconfig.pylsp.setup({
--      capabilities = capabilities
--    })

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
    vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
  end,
]]
}
