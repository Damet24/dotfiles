require('utils')

require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        previewer = false
      }

      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   codeactions = false,
      -- }
    }
  }
}
require("telescope").load_extension("ui-select")
local builtin = require('telescope.builtin')

map('n', '<leader>p',
"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer =  false }))<cr>",
opts)
map('n', '<leader>f', builtin.live_grep, opts)
map('n', '<leader>b', builtin.buffers,  opts)
