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

	require('rust-tools').setup({
		server = {
			settings = {
				["rust-analyzer"] = {
					checkOnSave = {
						command = "clippy";
					};
				}
			}
		}
	})

	require'lspconfig'.cmake.setup{
		capabilities = capabilities
	}
EOF

