
call plug#begin('~\.\AppData\Local\nvim\plugged')

  " color themes
  Plug 'joshdick/onedark.vim'
  Plug 'doums/darcula'
  Plug 'fcpg/vim-fahrenheit'
  Plug 'tomasiser/vim-code-dark'

  " utils
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'alvan/vim-closetag'
  Plug 'Yggdroot/indentLine'
  Plug 'itchyny/lightline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'christoomey/vim-tmux-navigator'

  " languages
  Plug 'sheerun/vim-polyglot'

call plug#end()
