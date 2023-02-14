lua << EOF
  require("zen-mode").setup {
  window = {
	  width = 170, -- width of the Zen window
	  options = {
		  signcolumn = "no", -- disable signcolumn
		  list = false, -- disable whitespace characters
		  },
	  },
  plugins = {
  twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
  gitsigns = { enabled = true }, -- disables git signs
  tmux = { enabled = true }, -- disables the tmux statusline
},
  }

    require("twilight").setup {
	    dimming = {
		alpha = 0.35,
	    },
	    context = 12,
    }
EOF

