return require("packer").startup(
function()
	use ({"wbthomason/packer.nvim"})
	use ({"windwp/nvim-autopairs"})
	use ({"preservim/nerdcommenter"})
	use ({"lukas-reineke/indent-blankline.nvim"})
	use ({"mg979/vim-visual-multi"})
	use ({"smjonas/inc-rename.nvim", config = require("setup/inc_rename") })
	use ({ "goolord/alpha-nvim", config = require("setup/alpha") })
	use ({"kyazdani42/nvim-web-devicons"})
	use ({"kyazdani42/nvim-tree.lua", config = require("setup/nvimtree")})

	--colors
	use	({"nvim-treesitter/nvim-treesitter", config = require("setup/treesitter")})
	use ({"itchyny/lightline.vim"})
	use ({"navarasu/onedark.nvim"})

	-- LSP
	use "neovim/nvim-lspconfig"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use ({"hrsh7th/nvim-cmp", config = require("setup/lsp")})
	use ({"andweeb/presence.nvim", config = require("setup/presence")})
	use ({ "folke/trouble.nvim", config = require("setup/trouble") })
end
)
