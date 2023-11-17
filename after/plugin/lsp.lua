local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
    lsp_zero.buffer_autoformat()
end)

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    mapping = {
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    },
})

local lspconfig = require('lspconfig')
lsp_zero.setup_servers({'lua_ls', 'rust_analyzer', 'clangd'})

lsp_zero.new_client({
  name = 'deno_lsp',
  cmd = {'deno', 'lsp'},
  filetypes = {'javascript', 'typescript'},
  root_dir = function()
    return lsp_zero.dir.find_first({'deno.json'}) 
  end
})

lsp_zero.new_client({
  name = 'tsserver',
  cmd = {'typescript-language-server'},
  filetypes = {'javascript', 'typescript'},
  root_dir = function()
    return lsp_zero.dir.find_first({'package.json'}) 
  end
})

