-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Load Packer
require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Plugins
	use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
	use { 
		'nvim-telescope/telescope.nvim', tag = '0.1.8', 
		-- 	branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use {
		"phha/zenburn.nvim",
		config = function() require("zenburn").setup() end
	}
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/playground'
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'

	-- LSP Support
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'j-hui/fidget.nvim'
	use 'stevearc/conform.nvim'

	-- Automcompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-path'
	use 'saadparwaiz1/cmp_luasnip'
	
	-- Snippets
	use 'L3MON4D3/LuaSnip'
end)

