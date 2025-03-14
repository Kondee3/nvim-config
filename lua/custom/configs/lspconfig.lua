local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"


-- if you just want default config for the servers then put them in a table
local servers = { "html",  "cssls", "ts_ls", "pylsp"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup({
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" }, -- exclude "proto" from clangd
})
lspconfig.protols.setup{}
lspconfig.ts_ls.setup{}
