local lsp_installer = require('nvim-lsp-installer')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)

vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<Leader>f', vim.lsp.buf.formatting, opts)

lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)
