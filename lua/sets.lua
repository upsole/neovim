local set = vim.opt
--File opts
set.clipboard = "unnamedplus"
set.backup = false
set.swapfile = false
set.encoding = "utf-8"
--set.undodir="~/.local/share/nvim/undodir"
set.fileencoding = 'utf-8'
set.swapfile = false
set.updatetime = 1000 -- swap file threshold
set.undofile = true
set.writebackup = false -- blocks editing files currently opened by other editors

--Display
set.cursorline = true
set.wrap = false
set.termguicolors = true
set.scrolloff = 8
set.incsearch = true
set.colorcolumn = "80"
set.cmdheight = 1
set.hlsearch = true

--Real Tabulation
set.autoindent = true
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = false

--left bar opts
set.number = true
set.relativenumber = true
set.numberwidth = 2
set.signcolumn = "yes"

-- Window
set.splitbelow = true           -- force all horizontal splits to go below current window
set.splitright = true  			    -- force all vertical to go right
set.pumheight = 8 -- autocompletion tab max items

set.shortmess:append "c"

vim.g.python3_host_prog = "$HOME/.config/nvim/nvim_env/bin/python3.10"

-- COLOR THEME
local colorscheme = "hybrid"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require("lang-autocmds")
