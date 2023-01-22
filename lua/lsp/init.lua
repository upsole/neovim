local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then return end

require("mason").setup()
require("mason-lspconfig").setup()
require("lsp.handlers").setup()
require("null-ls").setup()
require("mason-null-ls").setup({automatic_setup = true})
require'mason-null-ls'.setup_handlers()

-- TODO Automate this
lspconfig.clangd.setup {}
lspconfig.pyright.setup {}
lspconfig.jdtls.setup {}
lspconfig.sumneko_lua.setup {}

require("lsp.keys")
