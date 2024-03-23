-- This file can be loaded by calling `lua require('plugins')` from your init.vim

--wf- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ "rose-pine/neovim", as = "rose-pine", config = function()
	vim.cmd('colorscheme rose-pine')
        end})
	use (
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	 	)
	use('nvim-treesitter/playground')

	use("ThePrimeagen/harpoon")
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{"neovim/nvim-lspconfig"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lua"},
			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
			 {'williamboman/mason.nvim'},
			 {'williamboman/mason-lspconfig.nvim'},
             --auto close tags 
             {"windwp/nvim-ts-autotag"},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
		}
	}
    use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})
end)
