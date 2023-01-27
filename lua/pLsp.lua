local on_attach = function(client, bufnr)
  -- format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
}
