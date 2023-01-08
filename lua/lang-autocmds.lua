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
