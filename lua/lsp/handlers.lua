local M = {}

M.setup = function()
	vim.diagnostic.config({
		virtual_text = false,
		severity_sort = true,
		update_in_insert = true,
		float = {
			focusable = false,
			style = 'minimal',
			border = 'rounded',
			source = 'always',
			header = '',
			prefix = ''
		}
	})
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
		vim.lsp.handlers.hover,
		{ border = "rounded" })
	vim.lsp.handlers["textDocument/signatureHelp"] =
	vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
end



local lsp_defaults = require"lspconfig".util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend('force',
                                               lsp_defaults.capabilities,
                                              require('cmp_nvim_lsp').default_capabilities())
return M
