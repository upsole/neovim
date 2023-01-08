local options = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

map("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


----- NORMAL MODE
--WINDOW NAV
map("n", "<C-h>", "<C-w>h", options)
map("n", "<C-j>", "<C-w>j", options)
map("n", "<C-k>", "<C-w>k", options)
map("n", "<C-l>", "<C-w>l", options)
map("n", "<leader>e", ":NvimTreeToggle<cr>", options)

map("n", "<leader>wA", ":bfirst<cr>|:%bd!|e#<cr>", options) -- VLIME trash all buffers fast
map("n", "<leader>wq", ":bfirst<cr>|:w<cr>|:%bd!|e#<cr>|:wq<cr>", options)


--RESIZE windows with arrows
map("n", "<C-Up>", ":resize +2<CR>", options)
map("n", "<C-Down>", ":resize -2<CR>", options)
map("n", "<C-Left>", ":vertical resize -2<CR>", options)
map("n", "<C-Right>", ":vertical resize +2<CR>", options)

--BUFFER
map('n', 'H', ":bp<CR>", options)
map('n', 'L', ":bn<CR>", options)
map('n', '<leader>W', ":bd!<CR>", options)

----- INSERT MODE
map('i', '\"', "\"\"<Esc>i", options)
map('i', '\'', "''<Esc>i", options)
map('i', '(', "()<Esc>i", options)
map('i', '{', "{}<Esc>i", options)
----- VISUAL MODE
-- keeps you in visual mode after indent
map("v", "<", "<gv", options)
map("v", ">", ">gv", options)

--move up and downtext
map("v", "<A-j>", ":m .+1<CR>==", options)
map("v", "<A-k>", ":m .-2<CR>==", options)
map("v", "p", '"_dP' , options) --does not replace yank after pasting

--fold
map("v", "f", ":fo<CR>", options)

----- VISUAL BLOCK MODE
map("x", "J", ":move '>+1<CR>gv-gv", options)
map("x", "K", ":move '<-2<CR>gv-gv", options)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", options)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", options)


-- PLUGINS --
map("n", "<leader>fe", ":Format<cr>", options)
map("n", "<leader>re", ":LspRestart<cr>", options)
map("n", "<leader>p", ":Glow<cr>", options)
-- vim.api.nvim_del_keymap("n", "<C-F>")
vim.g.user_emmet_install_global = 1
vim.g.user_emmet_leader_key="ñ"

map("n", "gs", ":ColorizerToggle<cr>", options)
