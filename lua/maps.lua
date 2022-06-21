function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<F12>", ":set invhlsearch<CR>", {silent=true})
map("n", "<F1>", "gg=G", {silent=true})
map("n", "<F11>", ":set relativenumber!<CR>")
map("i", "<F11>", "<Esc>:set relativenumber!<CR>")
map("v", "<F11>", ":set relativenumber!<CR>")
map("n", "<F2>", "A;<Esc>")
map("i", "<F2>", "<Esc>A;")
map("n", "<F9>", ":lua require\"nvim-tree\".toggle(false, false)<CR>")
map("i", "<F9>", "<Esc>:lua require\"nvim-tree\".toggle(false, true)<CR>")
map("n", "<F10>", ":lua require\"nvim-tree\".toggle(false, true)<CR>")
map("i", "<F10>", "<Esc>:lua require\"nvim-tree\".toggle(false, true)<CR>")
