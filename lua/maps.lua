function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opts = { silent=true} 
map("n", "<F12>", ":set invhlsearch<CR>", opts)
map("n", "<F1>", "gg=G", opts)
map("n", "<F11>", ":set relativenumber!<CR>", opts)
map("i", "<F11>", "<Esc>:set relativenumber!<CR>", opts)
map("v", "<F11>", ":set relativenumber!<CR>", opts)
map("n", "<F2>", "A;<Esc>", opts)
map("i", "<F2>", "<Esc>A;", opts)
map("n", "<F9>", ":NvimTreeFocus<CR>", opts)
map("i", "<F9>", "<Esc>:NvimTreeFocus<CR>", opts)
map("n", "<F10>", ":lua require\"nvim-tree\".toggle(false, true,)<CR>", opts)
map("i", "<F10>", "<Esc>:lua require\"nvim-tree\".toggle(false, true,)<CR>", opts)
vim.keymap.set("n", "<leader>rn", ":IncRename ", opts)
