require('plugins')

vim.cmd.source('~/.vimrc')

vim.o.updatetime = 100
vim.opt.jumpoptions:append('stack')

-- hardtime
vim.g.hardtime_default_on = 0
vim.g.hardtime_maxcount = 2
vim.g.hardtime_allow_different_key = 1

-- minimap
vim.g.minimap_width = 10
vim.g.minimap_auto_start = 0
vim.g.minimap_auto_start_win_enter = 1

-- fugitive-gitlab
vim.g.fugitive_gitlab_domains = { ['10.11.0.31'] = 'http://10.11.0.31:8070' }

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
