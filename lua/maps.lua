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
map("i", "<F11>", ":set relativenumber!<CR>")
map("v", "<F11>", ":set relativenumber!<CR>")
