" Neovim's file browser

lua << EOF
	require'nvim-tree'.setup({
		update_focused_file = {
			enable      = true,
			update_cwd  = true,
		},
	})
EOF

