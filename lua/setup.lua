require('nvim-autopairs').setup()
vim.g.indent_blankline_char='┊'
vim.cmd(
[[
autocmd VimEnter * Neotree show
]]
)

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

