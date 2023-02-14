" Find stuff with Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope git_branches<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope git_bcommits<cr>
nnoremap <leader>r <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader><Space> <cmd>Telescope resume<cr>

" LSP
nnoremap <silent> gd <cmd>Telescope lsp_definitions<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>Telescope lsp_references<CR>
nnoremap <silent> gi <cmd>Telescope lsp_implementations<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> [g <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> ]g <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>x <cmd>Telescope lsp_code_actions<CR>
nnoremap <silent> <leader>ll <cmd>!tail $HOME/.cache/nvim/lsp.log<CR>

" clangd only
nnoremap <silent> ghs <cmd>ClangdSwitchSourceHeader<CR>

" Zen Mode
nnoremap <silent> <leader>z <cmd>ZenMode<CR>

" Toggle file browser
nnoremap <silent> <leader>b <cmd>NvimTreeToggle<CR>

" Debug
nnoremap <silent> <leader>dd <cmd>lua require('dapui').toggle()<CR>
nnoremap <silent> <leader>db <cmd>lua require('dap').toggle_breakpoint()<CR>
nnoremap <silent> <leader>dc <cmd>lua require('dap').continue()<CR>
nnoremap <leader>dl <cmd>Telescope dap list_breakpoints<cr>

" Goneovim specific commands
nmap <leader>w :GonvimWorkspaceNew<cr>

nnoremap ]w :GonvimWorkspaceNext<cr>
nnoremap [w :GonvimWorkspacePrevious<cr>

