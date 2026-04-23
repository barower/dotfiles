vim.o.autocomplete = true
vim.o.completeopt = 'menuone,noselect,popup'

-- Confirm only if an item is actually selected; otherwise pass <CR> through
vim.keymap.set('i', '<CR>', function()
	if vim.fn.pumvisible() == 1 and vim.fn.complete_info().selected ~= -1 then
		return '<C-y>'
	end
	return '<CR>'
end, { expr = true })

-- Manually trigger completion
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>')

require('lsp_signature').setup()
