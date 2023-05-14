require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager

  -- theme
  use 'nvim-tree/nvim-web-devicons'
  use 'rebelot/kanagawa.nvim'
  use({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use { "ellisonleao/gruvbox.nvim" }

  use 'nvim-lua/plenary.nvim'
  -- tree sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- comments
  use 'terrortylor/nvim-comment'
  use 'm4xshen/autoclose.nvim'
  use 'windwp/nvim-ts-autotag'

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

  use {
    'eckon/treesitter-current-functions',
    requires = { "nvim-treesitter/nvim-treesitter", "nvim-telescope/telescope.nvim" }
  }

  use "lukas-reineke/indent-blankline.nvim"

  use 'nvim-tree/nvim-tree.lua'

  use 'patstockwell/vim-monokai-tasty'
  use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }

  use "akinsho/toggleterm.nvim"

  -- tabs
  use 'moll/vim-bbye'

  use { 'nvim-telescope/telescope-ui-select.nvim' }

  use { 'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  }

  use { "alexghergh/nvim-tmux-navigation" }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use 'feline-nvim/feline.nvim'
end)

require('plugins.config.colorscheme')
require('plugins.config.lsp_config')
require('plugins.config.null-ls')
require('plugins.config.telescope_config')
require('plugins.config.syntax-tree')
require('plugins.config.nvim-tree')
require('plugins.config.tabs')
require('plugins.config.tags')
require('plugins.config.toggleterm')
require('plugins.config.comments')
require('plugins.config.navigation')
