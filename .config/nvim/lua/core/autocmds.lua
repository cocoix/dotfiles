-- Highlight on yank
vim.api.nvim_create_autocmd({"TextYankPost"}, {
    pattern = {"*"},
    callback = function() vim.highlight.on_yank({}) end,
})

-- Don't auto commenting new lines
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() vim.opt.formatoptions = vim.opt.formatoptions - {"c", "r", "o"} end,
})

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = {"*"},
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        pcall(function() vim.cmd [[%s/\s\+$//e]] end)
        vim.fn.setpos(".", save_cursor)
    end,
})