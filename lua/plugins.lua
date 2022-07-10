return require("packer").startup(
function()
	use ({"wbthomason/packer.nvim"})

	--ui
	use ({ "goolord/alpha-nvim", config = require("setup/alpha") })
	use ({"kyazdani42/nvim-web-devicons"})
	use ({"kyazdani42/nvim-tree.lua", config = require("setup/nvimtree")})
	use ({ "folke/trouble.nvim", config = require("setup/trouble") })

	--tools
	use ({"windwp/nvim-autopairs"})
	use ({"preservim/nerdcommenter"})
	use ({"mg979/vim-visual-multi"})
	use ({"smjonas/inc-rename.nvim", config = require("setup/inc_rename") })
	use ({"andweeb/presence.nvim", config = require("setup/presence")})
	use ("takac/vim-hardtime")

	--visual
	use	({"nvim-treesitter/nvim-treesitter", config = require("setup/treesitter")})
	use ({"nvim-lualine/lualine.nvim", config = require("setup/lualine")})
	use ({"navarasu/onedark.nvim"})
	use ({"lukas-reineke/indent-blankline.nvim"})

	-- LSP
	use "neovim/nvim-lspconfig"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use ({"hrsh7th/nvim-cmp", config = require("setup/lsp")})
end
)
