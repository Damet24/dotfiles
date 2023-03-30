require('utils')
require('telescope').setup{ }

local builtin = require('telescope.builtin')

map('n', '<leader>p',  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer =  false }))<cr>", opts)
map('n', '<leader>f', builtin.live_grep, opts)

