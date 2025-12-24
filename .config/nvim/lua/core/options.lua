-- Indent
vim.opt.expandtab = true -- 使用空格代替 tab
vim.opt.tabstop = 4 -- 显示时 tab 的宽度
vim.opt.shiftwidth = 4 -- >>/<</= 缩进的列数
vim.opt.softtabstop = -1 -- 插入模式下 tab 和 backspace 移动的列数，负数代表使用 shiftwidth 的值

vim.opt.termguicolors = true      -- True color support
vim.opt.ignorecase = true         -- Ignore case
vim.opt.smartcase = true          -- Don't ignore case with capitals
vim.opt.mouse = 'a'               -- Enable mouse mode
vim.opt.number = true             -- Print line number
vim.opt.relativenumber = true     -- Print relative line number
vim.opt.cursorline = true         -- Enable highlighting of the current line
vim.opt.incsearch = true          -- Show the pattern while typing a search command
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.smoothscroll = true

vim.opt.splitbelow = true
vim.opt.splitright = true

