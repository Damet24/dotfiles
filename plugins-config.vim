
so ~/.nvim/config/coc.vim
so ~/.nvim/config/nerdtree.vim
" so ~/.nvim/config/utilsnips.vim

" closetag react and php
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php, *.jsx, *.js, *.ejs"
let g:closetag_filetypes = 'html,xhtml,phtml,php,javascript,jsx,ejs'
let g:closetag_emptyTags_caseSensitive = 1

" tagalong
let g:tagalong_filetypes = ['html', 'php', 'javascript', 'javascriptreact', 'jsx', 'ejs']

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-h>'

" Airline themes
let g:airline_theme='monochrome'


" indentLine
let g:indentLine_char_list = '|'

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
