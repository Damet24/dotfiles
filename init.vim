filetype plugin indent on
syntax on
set clipboard=unnamed
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

source ~/.nvim/plugins.vim
source ~/.nvim/plugins-config.vim
source ~/.nvim/maps.vim

set background=dark
colorscheme gruvbox8_hard
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

let g:loaded_python_provider=0
let g:python3_host_prog = 'C:\Users\danie\scoop\apps\python\current\python.exe'
let g:loaded_python_provider = 0
