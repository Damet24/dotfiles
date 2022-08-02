local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<Leader>nt', ':NvimTreeToggle<CR>', opts)
map('n', '<Leader>nf', ':NvimTreeFocus<CR>', opts)


map('n', '<Leader>w', ':w<CR>', opts)
map('n', '<Leader>\'', ':q<CR>', opts)
map('n', '<Leader>"', ':q!<CR>', opts)
map('n', '<Leader>x', ':x<CR>', opts)
