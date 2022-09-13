return require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'

  -- theme
  use({ 'projekt0n/github-nvim-theme' })
  use 'adrian5/oceanic-next-vim'
  use 'Mofiqul/vscode.nvim'
  use 'morhetz/gruvbox'
  use 'navarasu/onedark.nvim'

  -- utils
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua' }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use "lukas-reineke/indent-blankline.nvim"

  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  use "terrortylor/nvim-comment"

  use 'voldikss/vim-floaterm'

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'windwp/nvim-ts-autotag'
end)
