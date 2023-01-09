require("toggleterm").setup()

local Terminal     = require('toggleterm.terminal').Terminal
local lazygit      = Terminal:new({ cmd = "lazygit", hidden = true, size = 20 })

function _lazygit_toggle()
  lazygit:toggle()
end

map("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", opts)
map('n', '<A-t>', ':ToggleTerm direction=horizontal<CR>', opts)
map('t', '<A-t>', '<Esc> <C-\\><C-n>:ToggleTerm<CR>', opts)
