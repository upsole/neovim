vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Show diagnostics in a floating window
    bufmap('n', '<C-d>l', '<cmd>lua vim.diagnostic.open_float()<cr>')
	-- List all
	bufmap('n', '<C-d>L', '<cmd>lua vim.diagnostic.setloclist()<CR>')
    -- Move previous/next
    bufmap('n', '<C-d>p', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
    bufmap('n', '<C-d>n', '<cmd>lua vim.diagnostic.goto_next()<cr>')

    -- Displays hover information about the symbol under the cursor
    bufmap('n', '<C-d>k', '<cmd>lua vim.lsp.buf.hover()<cr>')
    -- Jump to the definition
    bufmap('n', '<C-d>d', '<cmd>lua vim.lsp.buf.definition()<cr>')
    -- Jump to declaration
    bufmap('n', '<C-d>D', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', '<C-d>i', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    -- Jumps to the definition of the type symbol
    bufmap('n', '<C-d>o', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    -- Lists all the references 
    bufmap('n', '<C-d>r', '<cmd>lua vim.lsp.buf.references()<cr>')
    -- Displays a function's signature information
    bufmap('n', '<C-d>f', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  end
})
