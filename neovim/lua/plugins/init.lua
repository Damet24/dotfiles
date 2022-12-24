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

  -- null-ls
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'nvim-lua/plenary.nvim'

  -- nvim comment
  use 'terrortylor/nvim-comment'

  -- themes
  use 'Mofiqul/vscode.nvim'

  -- virtual terminal
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
end)

-- load plugin config
require('plugins.config.lsp')
require('plugins.config.nvim-tree')
require('plugins.config.ts')
require("plugins.config.autopairs")
require('plugins.config.n-ls')
require('plugins.config.comment')
