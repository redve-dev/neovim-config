require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 23,
		adaptive_size = true,
		mappings = {
			list = {},
		},
		signcolumn = "no",
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
			vim.cmd "quit"
		end
	end
})
