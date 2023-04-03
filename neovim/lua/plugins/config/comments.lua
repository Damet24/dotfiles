require('nvim_comment').setup()

map('n', '<C-/>', ':CommentToggle<CR>', opts)
map('v', '<C-/>', ':CommentToggle<CR>', opts)
