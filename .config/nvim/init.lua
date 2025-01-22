vim.cmd.source('~/.vimrc')

-- show tabs
vim.o.list = true
vim.cmd.highlight({'Whitespace', 'term=italic', 'ctermfg=black'})

--colorscheme
vim.o.termguicolors = true
vim.cmd.colorscheme('murphy') -- what?
vim.cmd.colorscheme('melange')

--conceal links
vim.o.conceallevel = 2

require('completionconfig')
require('lspsettings')
require('telescopeconfig')
require('harpoonconfig')
require('zenmodeconfig')
require('bufferlineconfig')
require('treesitterconfig')
require('gitsignsconfig')
require('whichkeyconfig')
require('statuslineconfig')
require('autobracketsconfig')
require('filemanipulation')
require('filebrowser')

require('nvimbindings')
