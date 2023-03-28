require('utils')
require('telescope').setup{ }

map('n', '<leader>f',  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer =  false }))<cr>", opts)

