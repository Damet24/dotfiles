vim.o.background = 'light'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Enable italic comment
    italic_comments = false
})
require('vscode').load()
vim.cmd('colorscheme vscode')
