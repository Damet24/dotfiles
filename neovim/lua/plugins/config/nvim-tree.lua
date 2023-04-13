require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = 'right',
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    indent_marker =  {
      enable = true,
      inline_arrows = true,
      icons = { corner = "└", edge = "│", item = "│", bottom = "─", none = " ", }
    }
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false
  }
})

map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>e', ':NvimTreeFocus<CR>', opts)
map('n', '<C-f>', ':NvimTreeFindFile<CR>', opts)

