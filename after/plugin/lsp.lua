vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local map = function(keys, func, desc, mode)
			mode = mode or 'n'
			vim.keymap.set(mode, keys, func, { buffer =args.buf, desc = 'LSP: ' .. desc })
		end
		map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
	end, 
})

