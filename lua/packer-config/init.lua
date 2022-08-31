
return require'packer'.startup(function()
  use 'wbthomason/packer.nvim'

  -- theme
  use ({ 'projekt0n/github-nvim-theme' })

  -- utils
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {'neoclide/coc.nvim', branch = 'release'}

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use "lukas-reineke/indent-blankline.nvim"

  use { 'ibhagwan/fzf-lua',
  -- optional for icon support
  requires = { 'kyazdani42/nvim-web-devicons' }
}

use "terrortylor/nvim-comment"

end)
