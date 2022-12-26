local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- file tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>e', ':NvimTreeFocus<CR>', opts)

-- virtual terminal
map('n', '<A-t>', ':ToggleTerm direction=horizontal<CR>', opts)
map('t', '<A-t>', '<Esc> <C-\\><C-n>:ToggleTerm<CR>', opts)

-- Save and close
map('n', '<C-s>', ':w<CR>', opts)

-- telescope
map('n', '<leader>ff',
  ":lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})<CR>"
  , opts)
