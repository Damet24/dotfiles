call plug#begin('~/.nvim/plugged')

  " color themes
  Plug 'sainnhe/gruvbox-material'
  Plug 'morhetz/gruvbox'
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'arcticicestudio/nord-vim'
  Plug 'joshdick/onedark.vim'
  Plug 'tomasiser/vim-code-dark'

  " utils
  Plug 'preservim/nerdtree'
  "Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'alvan/vim-closetag'
  Plug 'Yggdroot/indentLine'
  Plug 'ryanoasis/vim-devicons'
  Plug 'nikvdp/ejs-syntax'

  Plug 'AndrewRadev/tagalong.vim'
  Plug 'christoomey/vim-tmux-navigator'

  Plug 'beanworks/vim-phpfmt'

  Plug 'tribela/vim-transparent'

  Plug 'beanworks/vim-phpfmt'

  " languages
  Plug 'sheerun/vim-polyglot'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()
