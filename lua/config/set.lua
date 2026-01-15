vim.g.mapleader=" "
vim.o.number = true 
vim.o.clipboard = 'unnamedplus'
vim.o.relativenumber = true
vim.o.undofile = true
vim.o.scrolloff = 10 
vim.o.confirm =true

vim.o.tabstop=4 
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true 
vim.o.smartindent =true 

vim.api.nvim_create_autocmd('TextYankPost' , { 
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})


