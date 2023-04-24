local status_ok, toggleterm = pcall(require, 'toggleterm')
if not status_ok then
  return
end

toggleterm.setup({
  hide_numbers = true,
  close_on_exit = true,
  size = 15
})

local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

local function _lazygit_toggle()
  lazygit:toggle()
end

map('n', '<a-t>', ':ToggleTerm<cr>', opts)
map('t', '<a-t>', '<Esc> <C-\\><C-n>:ToggleTerm<cr>', opts)
map('n', '<leader>g', _lazygit_toggle, opts)
