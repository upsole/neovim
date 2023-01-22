-- TURN OFF DOUBLE QUOTES FOR LISP SCHEME
-- vim.cmd [[ 
--         augroup LISP
--         autocmd!
--         autocmd FileType scheme,lisp inoremap ' '
--         augroup END
-- ]]

vim.cmd [[ 
  augroup LUA
  autocmd!
  autocmd FileType lua set shiftwidth=4
  augroup END
]]

vim.cmd [[ 
  augroup HTML
  autocmd!
  autocmd FileType html set shiftwidth=4
  augroup END
]]

vim.cmd [[
  augroup C
    autocmd!
    autocmd FileType c inoremap ' ''<ESC>i
  augroup END
]]

vim.cmd [[ 
  augroup PYTHON
    autocmd!
    autocmd FileType python inoremap ' ''<ESC>i
  augroup END
]]

vim.cmd [[ 
  augroup JS
    autocmd!
    autocmd FileType javascript,typescript inoremap ' ''<ESC>i
  augroup END
]]
