-- Enabled servers

require'cmp'.setup {
	sources = {
		{ name = 'nvim_lsp' }
	}
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('clangd', {
	capabilities = capabilities
})
vim.lsp.enable('clangd')

vim.lsp.config('pylsp', {
	capabilities = capabilities,
	settings = {
		pylsp = {
			configurationSources = {"flake8"};
		}
	}
})
vim.lsp.enable('pylsp')

vim.lsp.config('jdtls', { cmd = { '/home/bosinski/thirdparty/java-lsp/bin/jdtls' } })
vim.lsp.enable('jdtls')

vim.lsp.config('rust_analyzer', {
	cmd = vim.lsp.rpc.connect("127.0.0.1", 27631),
	settings = {
		['rust-analyzer'] = {
			diagnostic = {
				refreshSupport = false,
			},
			diagnostics = {
				refreshSupport = false,
			},
			cargo = {
				allFeatures = true,
			},
			lspMux = {
				version = "1",
				method = "connect",
				server = "rust-analyzer",
			}
		},
	},
})
vim.lsp.enable('rust_analyzer')

require'fidget'.setup()

for _, method in ipairs({ 'textDocument/diagnostic', 'workspace/diagnostic' }) do
    local default_diagnostic_handler = vim.lsp.handlers[method]
    vim.lsp.handlers[method] = function(err, result, context, config)
        if err ~= nil and err.code == -32802 then
            return
        end
        return default_diagnostic_handler(err, result, context, config)
    end
end
