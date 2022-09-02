local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<Leader>w', ':w<CR>', opts)
map('n', '<Leader>q', ':q<CR>', opts)
map('n', '<Leader>x', ':x<CR>', opts)
map('n', '<Leader>Q', ':q!<CR>', opts)

map('n', '<Leader>nt', ':NvimTreeToggle<CR>', opts)
map('n', '<Leader>E', ':NvimTreeFocus<CR>', opts)

map('n', '<Leader>F', ':FzfLua files<CR>', opts)
map('n', '<Leader>L', ':FzfLua lines<CR>', opts)


map('n', '<left>', ':wincmd h<CR>', opts)
map('n', '<right>', ':wincmd l<CR>', opts)
map('n', '<up>', ':wincmd k<CR>', opts)
map('n', '<down>', ':wincmd j<CR>', opts)
