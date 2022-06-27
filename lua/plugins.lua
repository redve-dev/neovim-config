return require('packer').startup(
function()
	use 'wbthomason/packer.nvim'
	use 'windwp/nvim-autopairs'
	use 'preservim/nerdcommenter'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'rbgrouleff/bclose.vim'
	use 'francoiscabrol/ranger.vim'
	use "nvim-lua/plenary.nvim"
	use 'nathom/filetype.nvim' 
	use 'lewis6991/impatient.nvim'
	use {
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	}

	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'

	--colors
	use	'nvim-treesitter/nvim-treesitter'
	use 'itchyny/lightline.vim'
	use({
		'projekt0n/github-nvim-theme',
		config = function()
			require('github-theme').setup({
			})
		end
	})

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
end
)
