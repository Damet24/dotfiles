
require("nvim-tree").setup({
    view = {
        hide_root_folder = true,
    },
    renderer = {
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            }
        }
    }
})
