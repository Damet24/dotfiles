
let g:coc_global_extensions = ['coc-html', 'coc-tsserver', 'coc-json', 'coc-emmet', 'coc-css', 'coc-eslint']

call plug#begin('~\.\AppData\Local\nvim\plugged')

  " color themes
  Plug 'sainnhe/gruvbox-material'
  Plug 'navarasu/onedark.nvim'
  Plug 'mhartington/oceanic-next'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

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

  Plug 'AndrewRadev/tagalong.vim'
  Plug 'christoomey/vim-tmux-navigator'

  " languages
  Plug 'sheerun/vim-polyglot'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()
