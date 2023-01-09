require('telescope').setup {
  defaults = {
    layout_config = {
      layout_strategy = "vertical",
      vertical = {
        height = 5,
        preview_cutoff = 40,
        prompt_position = "bottom",
        width = 0.8
      }
    },
  }
}

local builtin = require('telescope.builtin')
require('utils')

map("n", "<leader>ff", builtin.find_files, opts)
map("n", "<leader>fg", builtin.live_grep, opts)
map("n", "<leader>fb", builtin.buffers, opts)
map("n", "<leader>fh", builtin.help_tags, opts)
