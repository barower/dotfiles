local gh = function(x) return 'https://github.com/' .. x end

-- Build hooks must be registered before vim.pack.add() to fire on first install
vim.api.nvim_create_autocmd('PackChanged', {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if kind ~= 'install' and kind ~= 'update' then return end

		if name == 'nvim-treesitter' then
			if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
			vim.cmd('TSUpdate')
		end

		if name == 'telescope-fzy-native.nvim' then
			vim.system({ 'make' }, { cwd = ev.data.path })
		end
	end,
})

vim.pack.add({
	-- Editor additions
	gh('tpope/vim-surround'),
	gh('takac/vim-hardtime'),
	gh('ntpeters/vim-better-whitespace'),

	-- Buffer management
	gh('moll/vim-bbye'),

	-- Indentation detection
	gh('tpope/vim-sleuth'),

	-- Minimap (system dep required: cargo install --locked code-minimap)
	gh('wfxr/minimap.vim'),

	-- Git
	gh('tpope/vim-fugitive'),
	gh('shumphrey/fugitive-gitlab.vim'),
	gh('lewis6991/gitsigns.nvim'),

	-- LSP
	gh('neovim/nvim-lspconfig'),
	gh('ray-x/lsp_signature.nvim'),
	gh('j-hui/fidget.nvim'),

	-- Completion
	gh('hrsh7th/nvim-cmp'),
	gh('hrsh7th/cmp-nvim-lsp'),
	gh('hrsh7th/cmp-nvim-lua'),
	gh('hrsh7th/cmp-buffer'),
	gh('hrsh7th/cmp-path'),
	gh('hrsh7th/cmp-cmdline'),

	-- Snippets
	gh('hrsh7th/cmp-vsnip'),
	gh('hrsh7th/vim-vsnip'),

	-- Color scheme
	gh('savq/melange'),

	-- Treesitter
	gh('nvim-treesitter/nvim-treesitter'),
	gh('nvim-treesitter/nvim-treesitter-context'),

	-- Mappings helper
	gh('folke/which-key.nvim'),

	-- Telescope
	gh('nvim-lua/popup.nvim'),
	gh('nvim-lua/plenary.nvim'),
	gh('nvim-telescope/telescope.nvim'),
	gh('nvim-telescope/telescope-fzy-native.nvim'),
	gh('kyazdani42/nvim-web-devicons'),

	-- Harpoon (pinned to harpoon2 branch)
	{ src = gh('ThePrimeagen/harpoon'), version = 'harpoon2' },

	-- Statusline
	gh('nvim-lualine/lualine.nvim'),

	-- Auto brackets
	gh('altermo/ultimate-autopair.nvim'),

	-- Zen mode
	gh('folke/twilight.nvim'),
	gh('folke/zen-mode.nvim'),

	-- File management
	gh('stevearc/oil.nvim'),
	gh('nvim-tree/nvim-tree.lua'),

	-- Bufferline
	gh('akinsho/bufferline.nvim'),
})
