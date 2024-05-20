" Enabled servers

lua << EOF

	require'cmp'.setup {
	sources = {
		{ name = 'nvim_lsp' }
		}
	}

	local capabilities = require('cmp_nvim_lsp').default_capabilities()

	require'lspconfig'.clangd.setup{
		capabilities = capabilities
	}

	require'lspconfig'.bashls.setup{
		capabilities = capabilities
	}

	require'lspconfig'.pylsp.setup{
		capabilities = capabilities,
		settings = {
			pylsp = {
				configurationSources = {"flake8"};
			}
		}
	}

	require'lspconfig'.hls.setup{
		capabilities = capabilities
	}

	require'lspconfig'.rust_analyzer.setup {
		settings = {
			['rust-analyzer'] = {},
		},
	}

	require'lspconfig'.cmake.setup{
		capabilities = capabilities
	}

	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		pattern = { "*.bb", "*.bbappend", "*.bbclass", "*.inc", "conf/*.conf" },
		callback = function()
		vim.lsp.start({
			name = "bitbake",
			cmd = { "bitbake-language-server" }
		})
		end,
	})
EOF

