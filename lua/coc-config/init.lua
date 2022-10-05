vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300

local map = vim.api.nvim_set_keymap

map("n", "<leader>.", "<Plug>(coc-codeaction)", {})

map("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})

map("n", "gd", "<Plug>(coc-definition)", {silent = true})

map("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})

map("n", "<leader>rn", "<Plug>(coc-rename)", {})

map("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})

vim.cmd('source ~/.nvim/lua/coc-config/config.vim')
