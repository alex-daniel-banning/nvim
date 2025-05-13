-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
      'windwp/nvim-ts-autotag',
      config = function()
          require('nvim-ts-autotag').setup({
              opts = {
                  enable_close = true,
                  enable_rename = true,
                  enable_close_on_slash = false,
              },
              per_filetype = {
                  html = {
                      enable_close = false
                  }
              }
          })
      end
  }
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

  use {
      'altermo/ultimate-autopair.nvim',
      event={'InsertEnter','CmdlineEnter'},
      branch='v0.6', --recommended as each new version will have breaking changes
      config=function ()
          require('ultimate-autopair').setup({
              --Config goes here
          })
      end,
  }

end)
