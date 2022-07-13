
call plug#begin('~/.nvim/plugged')

  " color themes
  "Plug 'sainnhe/gruvbox-material'
  "Plug 'morhetz/gruvbox'
  "Plug 'lifepillar/vim-gruvbox8'
  "Plug 'ghifarit53/tokyonight-vim'
  "Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'danilo-augusto/vim-afterglow'
  Plug 'martinsione/darkplus.nvim'

  "Plug 'vim-airline/vim-airline'
  "Plug 'vim-airline/vim-airline-themes'

  " utils
  Plug 'preservim/nerdtree'
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

  " languages
  Plug 'sheerun/vim-polyglot'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()
