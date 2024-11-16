-- Enabled servers

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
	-- cmd = vim.lsp.rpc.connect("127.0.0.1", 27631),
	-- init_options = {
	-- 	lspMux = {
	-- 		version = "1",
	-- 		method = "connect",
	-- 		server = "rust-analyzer",
	-- 	},
	-- },
	settings = {
		['rust-analyzer'] = {
			cargo = {
				allFeatures = true,
			},
		},
	},
}

require'lspconfig'.cmake.setup{
	capabilities = capabilities
}

require'lspconfig'.lua_ls.setup {
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
      return
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        }
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      }
    })
  end,
  settings = {
    Lua = {}
  }
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
