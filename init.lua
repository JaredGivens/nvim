vim.g.mapleader = ' '
require('plugins')
require('set')

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    --local capabilities = require('blink.cmp').get_lsp_capabilities(config.cappabilties);
    if client:supports_method('textDocument/diagnostic') then
      vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
      vim.keymap.set('n', 'gt', vim.diagnostic.toqflist)
    end
    if client.server_capabilities.goto_definition then
      vim.api.nvim_buf_set_option(bufnr, "tagfunc", "v:lua.vim.lsp.tagfunc")
    end

    -- Check if the LSP server supports document_formatting
    if client.server_capabilities.document_formatting then
      vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
    end
    -- grn   vim.lsp.buf.code_action
    -- gd    vim.lsp.buf.definition
    -- gri   vim.lsp.buf.implementation
    -- grf   vim.lsp.buf.references

    if not client:supports_method('textDocument/willSaveWaitUntil')
      and client:supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })
    end
  end,
})

