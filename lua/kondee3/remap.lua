local key = vim.keymap

vim.g.mapleader = " "
key.set("n", "<leader>pv", vim.cmd.Ex)
key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")
key.set("n", "J", "mzJ`z")
key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")
key.set("n", "n", "nzzzv")
key.set("n", "N", "Nzzzv")
key.set("x", "<leader>p", [["_dP]])
key.set({ "n", "v" }, "<leader>y", [["+y]])
key.set("n", "<leader>Y", [["+Y]])
key.set({ "n", "v" }, "<leader>d", [["_d]])
key.set("i", "<C-c>", "<Esc>")
key.set("n", "Q", "<nop>")
key.set("n", "<leader>f", vim.lsp.buf.format)
key.set("n", "<C-k>", "<cmd>cnext<CR>zz")
key.set("n", "<C-j>", "<cmd>cprev<CR>zz")
key.set("n", "<leader>k", "<cmd>lnext<CR>zz")
key.set("n", "<leader>j", "<cmd>lprev<CR>zz")
key.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
key.set("n", "<leader>nvim", "<cmd>e C:/Users/Ewa/AppData/Local/nvim/<CR>");
key.set("n", "<leader>rust", "<cmd>e C:/Users/Ewa/<CR>");

key.set("n", "<leader><leader>", function()
    vim.cmd(":w")
end)
