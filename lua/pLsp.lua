local on_attach = function(client, bufnr)
  -- format on save
--  vim.api.nvim_create_autocmd('BufWritePre', {
--    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
--    buffer = bufnr,
--    callback = function()
--      vim.lsp.buf.format()
--    end
--  })
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end
---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
	  capabilities = capabilities,
}
