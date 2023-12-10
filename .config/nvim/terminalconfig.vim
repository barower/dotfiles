lua << EOF
require('toggleterm').setup{
    open_mapping = [[<leader>t]],
    shade_terminals = true,
    on_open = function(term)
        vim.cmd("DisableWhitespace")
        vim.cmd("noh")
    end,
    on_close = function(term)
        vim.cmd("EnableWhitespace")
    end,
    hide_numbers = true,
    direction = "float",
    float_opts = {
        border = "curved",
    }
}
EOF

