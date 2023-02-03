require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    hide_root_folder = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
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

