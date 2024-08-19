--@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.personal = {
  n = {
    ["<leader>gs"] = { vim.cmd.Git },
    ["J"] = { "mzJ`z" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["<leader>y"] = { [["+y]] },
    ["<leader>Y"] = { [["+Y]] },
    ["<leader>d"] = { [["_d]] },
    ["Q"] = { "<nop>" },
    ["<leader>f"] = { vim.lsp.buf.format },
    ["<C-k>"] = { "<cmd>cnext<CR>zz" },
    ["<C-j>"] = { "<cmd>cprev<CR>zz" },
    ["<leader>k"] = { "<cmd>lnext<CR>zz" },
    ["<leader>j"] = { "<cmd>lprev<CR>zz" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
    ["<leader>all"] = { "ggVG" },
    ["<leader>pe"] = { "ggVG" },
    ["<leader><leader>"] = {
      function()
        vim.cmd ":w"
      end,
    },
    --Undotree
    ["<leader>u"] = { vim.cmd.UndotreeToggle },
    --Zenmode
    ["<leader>zz"] = {
      function()
        require("zen-mode").setup {
          window = {
            width = 90,
            options = {},
          },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = true
        vim.wo.rnu = true
      end,
    },
    --Trouble
    ["<leader>xq"] = { "<cmd>Trouble diagnostics toggle<cr>" },

    ["<leader>zZ"] = {
      function()
        require("zen-mode").setup {
          window = {
            width = 80,
            options = {},
          },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = false
        vim.wo.rnu = false
        vim.opt.colorcolumn = "0"
      end,
    },
  },
  v = {

    ["<leader>y"] = { [["+y]] },
    ["<leader>d"] = { [["_d]] },
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
  x = {

    ["<leader>p"] = { [["_dP]] },
  },
  i = {

    ["<C-c>"] = { "<Esc>" },
  },
}
-- more keybinds!

return M
