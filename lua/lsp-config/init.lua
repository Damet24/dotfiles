local lsp_installer = require('nvim-lsp-installer')

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map('n', '<space>e', vim.diagnostic.open_float, opts)

map('n', 'gr', vim.lsp.buf.references, opts)

map('n', 'gD', vim.lsp.buf.declaration, opts)
map('n', 'gd', vim.lsp.buf.definition, opts)

map('n', 'K', vim.lsp.buf.hover, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', '<C-k>', vim.lsp.buf.signature_help, opts)

map('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
map('n', '<Leader>rn', vim.lsp.buf.rename, opts)
map('n', '<Leader>ca', vim.lsp.buf.code_action, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', '<Leader>f', vim.lsp.buf.formatting, opts)

vim.cmd 'set foldmethod=expr'
vim.cmd 'set foldexpr=nvim_treesitter#foldexpr()'

lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)
