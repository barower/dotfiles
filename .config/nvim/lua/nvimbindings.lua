-- Find stuff with Telescope
vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<Leader>fb', '<cmd>Telescope git_branches<cr>')
vim.keymap.set('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')
vim.keymap.set('n', '<Leader>fc', '<cmd>Telescope git_bcommits<cr>')
vim.keymap.set('n', '<Leader><Space>', '<cmd>Telescope resume<cr>')

-- LSP navigation
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>')
vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

-- LSP actions
vim.keymap.set('n', '<Leader>a', '<cmd>lua vim.lsp.buf.rename()<cr>')
vim.keymap.set('n', '<Leader>x', '<cmd>lua vim.lsp.buf.code_action()<cr>')
vim.keymap.set('n', '<Leader>ll', '<cmd>!tail $HOME/.cache/nvim/lsp.log<cr>')
vim.keymap.set('n', '<Leader>h', '<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>')

-- For clangd only, probably can be replaced by `gd`/`gD`
vim.keymap.set('n', 'ghs', '<cmd>ClangdSwitchSourceHeader<cr>')

-- Zen mode
vim.keymap.set('n', '<Leader>z', '<cmd>ZenMode<cr>')

-- Oil for quick file manipulation
vim.keymap.set('n', '<Leader>o', '<cmd>Oil --float .<cr>')
vim.keymap.set('n', '<Leader>i', '<cmd>Oil --float %:p:h<cr>')
