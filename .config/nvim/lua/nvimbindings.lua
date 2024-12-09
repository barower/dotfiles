-- Find stuff with Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', telescope.find_files)
vim.keymap.set('n', '<Leader>fg', telescope.live_grep)
vim.keymap.set('n', '<Leader>fb', telescope.git_branches)
vim.keymap.set('n', '<Leader>fh', telescope.help_tags)
vim.keymap.set('n', '<Leader>fc', telescope.git_bcommits)
vim.keymap.set('v', '<Leader>fc', telescope.git_bcommits_range)
-- vim.keymap.set('v', '<Leader>fq', function() vim.cmd('Telescope quickfix') end) --this works badly
vim.keymap.set('n', '<Leader><Space>', telescope.resume)

-- LSP navigation

-- if vim.g.vscode then
--   vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
--   vim.keymap.set('n', 'gr', vim.lsp.buf.references)
--   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
-- else
vim.keymap.set('n', 'gd', telescope.lsp_definitions)
vim.keymap.set('n', 'gr', telescope.lsp_references)
vim.keymap.set('n', 'gi', telescope.lsp_implementations)
-- end

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- LSP actions
vim.keymap.set('n', '<Leader>a', vim.lsp.buf.rename)
vim.keymap.set('n', '<Leader>x', vim.lsp.buf.code_action)
vim.keymap.set('n', '<Leader>ll', function() vim.cmd('!tail $HOME/.local/state/nvim/lsp.log') end)
vim.keymap.set('n', '<Leader>h', function() return vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({})) end)

-- For clangd only
vim.keymap.set('n', 'ghs', function() vim.cmd('ClangdSwitchSourceHeader') end)

-- Zen mode
vim.keymap.set('n', '<Leader>z', function() vim.system({'zellij', 'action', 'toggle-fullscreen'}); require('zen-mode').toggle() end)

-- Oil for quick file manipulation
vim.keymap.set('n', '<Leader>o', function() require('oil').toggle_float(vim.fn.getcwd()) end) -- open in cwd
vim.keymap.set('n', '<Leader>i', require('oil').toggle_float) -- open in parent of current buffer

