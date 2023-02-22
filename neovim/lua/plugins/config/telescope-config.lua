require('telescope').setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        height = 20,
        preview_cutoff = 40,
        prompt_position = "bottom",
        width = 0.4
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
map("n", "<leader>st", ":Telescope colorscheme<CR>", opts)
