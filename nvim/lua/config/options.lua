vim.opt.background = "dark"   -- flip to "light" and monopink follows
vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.fillchars = { eob = " ", vert = "│", horiz = "─" }

vim.g.python3_host_prog = vim.fn.expand("~/.local/share/nvim/venv/bin/python")
