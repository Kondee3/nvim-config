require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n","<leader>gs",   vim.cmd.Git )
map("n","J", "mzJ`z" )
map("n","<C-d>","<C-d>zz" )
map("n","<C-u>", "<C-u>zz" )
map("n","n","nzzzv" )
map("n","N","Nzzzv" )
map("n","<leader>y",[["+y]] )
map("n","<leader>Y",[["+Y]] )
map("n","<leader>d", [["_d]] )
map("n","Q","<nop>" )
map("n","<leader>f",vim.lsp.buf.format )
map("n","<C-k>","<cmd>cnext<CR>zz" )
map("n","<C-j>", "<cmd>cprev<CR>zz" )
map("n","<leader>k","<cmd>lnext<CR>zz" )
map("n","<leader>j","<cmd>lprev<CR>zz" )
map("n","<leader>s",[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] )
map("n","<leader>all","ggVG" )
map("n","<leader>pe", "ggVG" )
map("n","<leader><leader>",
  function()
    vim.cmd ":w"
  end
)
map("n","<leader>u", vim.cmd.UndotreeToggle )
--Zenmode
map("n","<leader>zz",
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
  end
)
map("n","<A-CR>", "<cmd>Trouble diagnostics toggle<cr>" )

map("n","<leader>zZ",
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
  end
)
map("v","<leader>y", [["+y]] )
map("v","<leader>d",   [["_d]] )
map("v","J",   ":m '>+1<CR>gv=gv" )
map("v","K",   ":m '<-2<CR>gv=gv" )
map("x","<leader>p",  [["_dP]] )
map("i","<C-c>","<Esc>" )
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
