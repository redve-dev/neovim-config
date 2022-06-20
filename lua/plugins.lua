local neotree_conf=require('neotree_config')
return require('packer').startup(
function()
	use 'wbthomason/packer.nvim'
	use 'windwp/nvim-autopairs'
	use 'preservim/nerdcommenter'
	use 'lukas-reineke/indent-blankline.nvim'
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim" 
		},
		config=neotree_conf.config()
	}
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup {

			}
		end
	}
	use 'nvim-treesitter/nvim-treesitter'
end
)
