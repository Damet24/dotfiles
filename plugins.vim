
call plug#begin('~/.nvi/plugged')

  Plug 'projekt0n/github-nvim-theme'
  Plug 'danilo-augusto/vim-afterglow'
  Plug 'Mofiqul/vscode.nvim'

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

  Plug 'voldikss/vim-floaterm'

  " languages
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'sheerun/vim-polyglot'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()
