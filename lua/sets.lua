local set = vim.opt
        
--file opts
set.backup = false
set.swapfile = false
set.encoding = "utf-8"
set.fileencoding = 'utf-8'
set.swapfile = false
set.updatetime = 300 -- swap file threshold
set.undofile = true
set.writebackup = false -- blocks editing files currently opened by other editors

--search opts
set.hlsearch = true
set.ignorecase = false
set.clipboard = "unnamedplus"

--left bar opts
set.nu = true
set.relativenumber = true
set.numberwidth = 2
set.signcolumn = "yes"

--indent, tabs, editor
-- set.tabstop = 8
set.expandtab = true
-- set.shiftwidth = 2
set.completeopt = { "menuone", "noselect" } -- for cmp plug

--display
set.cursorline = true
set.wrap = false
set.termguicolors = true
set.scrolloff = 8
set.incsearch = true
set.colorcolumn = "80"
set.cmdheight = 1
--set.sidescrolloff = 8
--set.guifont = "mono xyz"

--splits
set.splitbelow = true           -- force all horizontal splits to go below current window
set.splitright = true  			    -- force all vertical to go right


set.errorbells = false
set.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd([[
set undodir=$HOME/.local/share/nvim/undodir
]])

-- TURN OFF DOUBLE QUOTES FOR LISP SCHEME
vim.cmd [[ 
        augroup LISP
        autocmd!
        autocmd FileType scheme,lisp inoremap ' '
        augroup END
]]

vim.cmd [[ 
        augroup LUA
        autocmd!
        autocmd FileType lua set shiftwidth=2
        augroup END
]]

-- vim.cmd [[ 
--   augroup PYTHON
--     autocmd!
--     autocmd FileType python set tabstop = 4
--   augroup END
-- ]]

vim.g.python3_host_prog = "$HOME/.config/nvim/nvim_env/bin/python3.10"

--Persistent FOLDS
-- vim.cmd [[
--  augroup AutoSaveFolds
--    autocmd!
--    autocmd BufWinLeave * silent! mkview
--    autocmd BufWinEnter * silent! loadview
--  augroup END
-- ]]
