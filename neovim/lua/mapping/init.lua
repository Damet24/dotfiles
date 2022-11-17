local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<Leader>w', ':w<CR>', opts)
map('n', '<Leader>W', ':w!<CR>', opts)
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

map('n', '<Leader>C', ':!node %<CR>', opts)

map('n', '<Leader>tt', ':FloatermToggle<CR>', opts)

map('n', '<A-j>', ':m .+1<CR>', opts)
map('n', '<A-k>', ':m .-2<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Close buffer
map('n', '<A-q>', '<Cmd>BufferClose<CR>', opts)
