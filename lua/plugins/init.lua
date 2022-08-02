
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- theme
  use 'Mofiqul/vscode.nvim'
  use ({ 'projekt0n/github-nvim-theme' })

  -- utils
  use 'nvim-lualine/lualine.nvim'

  use 'kyazdani42/nvim-tree.lua'

  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'

  use { 'hrsh7th/nvim-cmp',
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-git",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind-nvim",
            "L3MON4D3/LuaSnip",
             }
end)
