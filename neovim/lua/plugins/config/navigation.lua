local nvim_tmux_nav = require('nvim-tmux-navigation')

nvim_tmux_nav.setup {
  disable_when_zoomed = true -- defaults to false
}

require('utils')

map("n", "<C-Left>", "<cmd>lua nvim_tmux_nav.NvimTmuxNavigateLeft()<CR>", opts)
map("n", "<C-Down>", nvim_tmux_nav.NvimTmuxNavigateDown, opts)
map("n", "<C-Up>", nvim_tmux_nav.NvimTmuxNavigateUp, opts)
map("n", "<C-Right>", nvim_tmux_nav.NvimTmuxNavigateRight, opts)
map("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive, opts)
