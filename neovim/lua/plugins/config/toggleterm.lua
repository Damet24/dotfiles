local status_ok, toggleterm = pcall(require, 'toggleterm')
if not status_ok then
  return
end

toggleterm.setup({
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  close_on_exit = true
})

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

local function _lazygit_toggle()
  lazygit:toggle()
end

map('n', '<leader>g', _lazygit_toggle, opts)
