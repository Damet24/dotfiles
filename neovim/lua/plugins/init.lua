require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager

  -- nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  --tree sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- lsp and cmp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- autopairs
  use 'windwp/nvim-autopairs'

  -- indents
  use 'lukas-reineke/indent-blankline.nvim'

  use 'nvim-lua/plenary.nvim'

  -- nvim comment
  use 'terrortylor/nvim-comment'

  -- themes
  use 'Mofiqul/vscode.nvim'
  use 'NTBBloodbath/doom-one.nvim'
  use 'folke/tokyonight.nvim'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- virtual terminal
  use 'akinsho/toggleterm.nvim'

  -- git integrations
  -- use 'airblade/vim-gitgutter'
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'

  -- tmux navigation
  use 'alexghergh/nvim-tmux-navigation'

  use 'alvan/vim-closetag'

  use 'nvim-lualine/lualine.nvim'

  use {'stevearc/dressing.nvim'}
end)

-- load plugin config
require('plugins.config.lsp')
require('plugins.config.nvim-tree')
require("plugins.config.autopairs")
require('plugins.config.comment')
require('plugins.config.telescope-config')
require('plugins.config.git')
require('plugins.config.navigation')
require('plugins.config.term')
require('plugins.config.ts')
require('plugins.config.line')
