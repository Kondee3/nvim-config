local options = {
  ensure_installed = {
    "deno",
    "lua-language-server",
    "prettier",
    "pyright",
    "stylua",
    "typescript-language-server",
    "black",
    "mypy",
    "ruff",
    "arduino-language-server",
    "clang-format",
    "clangd"
  }, -- not an option from mason.nvr

  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
