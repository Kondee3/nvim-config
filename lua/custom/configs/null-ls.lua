local null_ls = require "null-ls"

local b = null_ls.builtins
require("mason-null-ls").setup {
  ensure_installed = {
    "deno",
    "lua-language-server",
    "prettier",
    "stylua",
    "typescript-language-server",
    "ruff",
    "clang-format",
    "clangd",
    "python-lsp-server",
  },
  automatic_installation = true,
}
local sources = {

  require("none-ls.formatting.ruff").with { extra_args = { "--extend-select", "I" } },
  require "none-ls.formatting.ruff_format",
  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  -- Lua
  b.formatting.stylua,

  -- cpp
  -- b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
