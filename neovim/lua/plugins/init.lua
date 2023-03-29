require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager

  -- theme
  use 'Th3Whit3Wolf/one-nvim'
  use 'Mofiqul/vscode.nvim'
  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lua/plenary.nvim'
  -- tree sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- comments
  use 'terrortylor/nvim-comment'
  use 'windwp/nvim-autopairs'
  use 'alvan/vim-closetag'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'jose-elias-alvarez/null-ls.nvim'
  use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" }

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use "lukas-reineke/indent-blankline.nvim"

  use 'nvim-tree/nvim-tree.lua'

  use 'patstockwell/vim-monokai-tasty'
  use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }

  use "akinsho/toggleterm.nvim"
end)

require('plugins.config.colorscheme')
require('plugins.config.lsp_config')
require('plugins.config.telescope_config')
require('plugins.config.syntax-tree')
require('plugins.config.nvim-tree')
require('plugins.config.tabs')
