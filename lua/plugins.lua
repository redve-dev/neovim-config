--local neotree_conf=require('neotree_config')
return require('packer').startup(
function()
	use 'wbthomason/packer.nvim'
	use 'windwp/nvim-autopairs'
	use 'preservim/nerdcommenter'
	use 'lukas-reineke/indent-blankline.nvim'
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup {

			}
		end
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
	}


--colors
	use	'nvim-treesitter/nvim-treesitter'
	use 'glepnir/zephyr-nvim'

-- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
end
)
