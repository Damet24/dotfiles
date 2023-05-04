require('utils')
vim.g.mapleader = ' '

-- clear console.logs
map('n', '<leader>cc', ':%s/^\\?[ ]*console.log(.*);\\?\\n\\?\\$\\?//g<CR>', opts)

map('n', '<leader>Q', ':q!<CR>', opts)
map('n', '<C-s>', ':w<CR>', opts)
