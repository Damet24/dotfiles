filetype plugin indent on
syntax on
set encoding=UTF-8
set relativenumber
set termguicolors
set laststatus=2
set cursorline
set noshowmode
set hidden
set mouse=a
set foldmethod=syntax
set cmdheight=2
set updatetime=300
set nobackup
set nowritebackup
set nolist
set shortmess+=c
set number
set ruler
set sw=2
set clipboard=unnamed

source %:p\plugins.vim
source %:p\plugins-config.vim
source %:p\maps.vim

colorscheme base16-default-dark

" color settings
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
