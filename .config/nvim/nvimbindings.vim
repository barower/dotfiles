" Find stuff with Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope git_branches<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope git_bcommits<cr>
nnoremap <leader><Space> <cmd>Telescope resume<cr>

" LSP
nnoremap <silent> gd <cmd>Telescope lsp_definitions<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>Telescope lsp_references<CR>
nnoremap <silent> gi <cmd>Telescope lsp_implementations<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> [d <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>x <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <leader>ll <cmd>!tail $HOME/.cache/nvim/lsp.log<CR>
nnoremap <silent> <leader>h <cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>

" clangd only
nnoremap <silent> ghs <cmd>ClangdSwitchSourceHeader<CR>

" Zen Mode
nnoremap <silent> <leader>z <cmd>ZenMode<CR>
