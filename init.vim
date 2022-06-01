filetype plugin indent on
syntax on
set clipboard=unnamedplus
set updatetime=300
set encoding=UTF-8
set nowritebackup
set laststatus=2
set shortmess+=c
set cmdheight=1
set cursorline
set noshowmode
set nobackup
set mouse=a
set hidden
set nolist
set number
set ruler
set sw=2
set relativenumber

source ~/.nvim/config/statusline.vim
source ~/.nvim/plugins.vim
source ~/.nvim/plugins-config.vim
source ~/.nvim/maps.vim


let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme codedark
"colorscheme gruvbox
"colorscheme gruvbox8_hard
"colorscheme onedark
highlight Normial ctermbg=NONE

" color settings
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

