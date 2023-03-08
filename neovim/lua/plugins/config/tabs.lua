vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    indicator = {
      style = 'icon',
    },
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true
      }
    },
    show_close_icon = false,
    separator_style = "slant",
  }
}

map('n', '<A-right>', '<CMD>BufferLineCycleNext<CR>', opts)
map('n', '<A-left>', '<CMD>BufferLineCyclePrev<CR>', opts)
map('n', '<leader>tc', '<CMD>BufferLinePickClose<CR>', opts)
