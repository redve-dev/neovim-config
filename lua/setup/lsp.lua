vim.g.completeopt="menu,menuone,noselect,noinsert"
-- Setup nvim-cmp.
local cmp = require'cmp'
local types = require('cmp.types')

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<Down>'] = cmp.mapping({
			i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }),
			c = function(fallback)
				local cmp = require('cmp')
				cmp.close()
				vim.schedule(cmp.suspend())
				fallback()
			end,
		}),

		['<Up>'] = cmp.mapping({
			i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }),
			c = function(fallback)
				local cmp = require('cmp')
				cmp.close()
				vim.schedule(cmp.suspend())
				fallback()
			end,
		}),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
		-- { name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
	}, {
		{ name = 'buffer' },
	})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = 'buffer' },
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})
-- Setup lspconfig.

vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=red guibg=#1f2335]]

--local border = {
      --{"????", "FloatBorder"},
      --{"???", "FloatBorder"},
      --{"????", "FloatBorder"},
      --{"???", "FloatBorder"},
      --{"????", "FloatBorder"},
      --{"???", "FloatBorder"},
      --{"????", "FloatBorder"},
      --{"???", "FloatBorder"},
--}
local border = {
	{ "???", "FloatBorder"},
	{"???", "FloatBorder"},
	{"???", "FloatBorder"},
	{"???", "FloatBorder"},
	{"???", "FloatBorder"},
	{"???", "FloatBorder"},
	{"???", "FloatBorder"},
	{"???" , "FloatBorder"},
}

-- LSP settings (for overriding per client)
local handlers =  {
	["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
	["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}
-- To instead override globally
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = opts.border or border
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.clangd.setup {}
require'lspconfig'.pyright.setup {}
