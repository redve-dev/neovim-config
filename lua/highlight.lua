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
