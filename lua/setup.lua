require('nvim-autopairs').setup()
vim.g.indent_blankline_char='┊'
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
require('onedark').setup({style = 'darker' })
vim.cmd[[colorscheme onedark]]
