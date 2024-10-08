vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt

-- configurando linhas
opt.relativenumber = true
opt.number = true

-- configurando copia/cola
opt.clipboard:append("unnamedplus")

-- dividindo janelas
opt.splitright = true
opt.splitbelow = true

-- tabs e identação
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
