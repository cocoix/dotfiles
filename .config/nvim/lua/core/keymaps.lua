-- Mapleader must be set before lazy.nvim loading
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w<cr>", opts)

vim.keymap.set("n", "<Up>", ":resize -2<cr>", opts)
vim.keymap.set("n", "<DOwn>", ":resize +2<cr>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<cr>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<cr>", opts)

vim.keymap.set("n", "<M-p>", "\"0p")

