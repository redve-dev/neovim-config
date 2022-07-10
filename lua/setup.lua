require('nvim-autopairs').setup()
vim.g.indent_blankline_char='┊'
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
require('onedark').setup({style = 'darker' })
vim.cmd[[colorscheme onedark]]

--highlight
function hi(group, opts)
	local c = "highlight " .. group
	for k, v in pairs(opts) do
		c = c .. " " .. k .. "=" .. v
	end
	vim.cmd(c)
end
hi("CursorLine",{gui="NONE", cterm="NONE", ctermbg=238})
hi("CursorLineNr",{gui="NONE", cterm="NONE", ctermbg=238, ctermfg=5})
hi("Conceal", {ctermfg=5})
hi("IndentBlanklineChar",{ctermfg=245})
hi("Pmenu",{ctermbg=23, ctermfg=247})
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#ff0000]]

local set = vim.opt
set.swapfile=false
set.number=true
set.showmatch=true
set.ignorecase=true
set.wildmenu=true
set.hlsearch=true
set.incsearch=true
set.tabstop=4
set.softtabstop=4
set.shiftwidth=4
set.clipboard="unnamedplus"
set.cursorline=true
set.encoding="UTF-8"
set.splitright=true
set.splitbelow=true
set.scrolloff=5
set.guicursor="i:block"
set.expandtab=false
set.wrap=false
set.completeopt=menu,menuone,noselect
set.ruler=true
set.autoindent=true
set.smartindent=true
set.showmode=false
set.inccommand="nosplit"
set.termguicolors=true

vim.g.mapleader = ";"
vim.g.hardtime_default_on=1
vim.g.hardtime_allow_different_key=1
