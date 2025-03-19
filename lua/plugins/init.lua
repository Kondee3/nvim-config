return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
    ensure_installed = {
      "vim",
      "vimdoc",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "c",
      "markdown",
      "markdown_inline",
      "python",
      "rust",
      "proto"
    },
    indent = {
      enable = true,
      disable = {
        "python"
      },
    },
  	},

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




