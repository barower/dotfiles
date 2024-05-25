source ~/.vimrc

" show tabs
set list
highlight Whitespace term=italic ctermfg=black

" colorscheme
set termguicolors
colorscheme melange

" conceal links
set conceallevel=2

lua <<EOF
require('completionconfig')
require('lspsettings')
require('telescopeconfig')
require('zenmodeconfig')
require('bufferlineconfig')
require('treesitterconfig')
require('gitsignsconfig')
require('whichkeyconfig')
require('statuslineconfig')
require('autobracketsconfig')
require('terminalconfig')
EOF

source ~/.config/nvim/nvimbindings.vim

