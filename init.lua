require('sets')
require('keys')
require('plugins')

--LSP + Syntax [LSP, Mason, NullLS, TreeSitter, UltiSnips]
require('lsp')
require('config.treesitter')
require('config.cmp')
require('config.ultisnips')

--Navigation [Telescope, NvimTree, Bufferline+Lualine] 
require('config.telescope')
require('config.nvim-tree')
require('config.lualine')
require('config.bufferline')

--extras // 
require('config.toggleterm')
require('config.vlime')
require('config.vimtex')
require('config.nvim-color')
