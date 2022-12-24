local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<Tab>'] = nil,
  ['<S-Tab>'] = nil,
})


-- disable completion with tab
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = {
    error = '',
    warn = '',
    hint = '',
    info = ''
  }
})

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  local bind = vim.keymap.set

  bind('n', '<space>t', vim.diagnostic.open_float, opts)
  bind('n', 'gr', vim.lsp.buf.references, opts)
  bind('n', 'gD', vim.lsp.buf.declaration, opts)
  bind('n', 'gd', vim.lsp.buf.definition, opts)
  bind('n', 'K', vim.lsp.buf.hover, opts)
  bind('n', 'gi', vim.lsp.buf.implementation, opts)
  bind('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  bind('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
  bind('n', '<Leader>rn', vim.lsp.buf.rename, opts)
  bind('n', '<Leader>ca', vim.lsp.buf.code_action, opts)
  bind('n', 'gr', vim.lsp.buf.references, opts)
  bind('n', '<Leader>f', vim.lsp.buf.format, opts)
end)

lsp.setup()
