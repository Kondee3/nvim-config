local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        dependencies = {
          "nvimtools/none-ls-extras.nvim",
          "jay-babu/mason-null-ls.nvim",
        },
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  { "mbbill/undotree" },
  { "folke/zen-mode.nvim", opts = {} },
  { "tpope/vim-fugitive" },
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    opts = {},
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>xq",
        "<cmd>Trouble diagnostics toggle focus=false<cr>",
        desc = "Diagnostics (Trouble)",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    lazy = false,
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    lazy = false,
    version = "^4",
    ft = { "rust" },
  },

  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup()
    end,
  },
}

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {},
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
      vim.lsp.inlay_hint.enable(true)
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
          runBuildScripts = true,
        },
      },
    },
  },
  -- DAP configuration
  dap = {},
}
return plugins
