require('utils')
vim.g.mapleader = ' '

-- clear console.logs
map('n', '<leader>cc', ':%s/^\\?[ ]*console.log(.*);\\?\\n\\?\\$\\?//g<CR>', opts)
