local indent = 4
vim.opt.shiftwidth = indent       -- Size of an indent
vim.opt.tabstop = indent          -- Number of spaces tabs count for

vim.opt.termguicolors = true      -- True color support
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.ignorecase = true         -- Ignore case
vim.opt.smartcase = true          -- Don't ignore case with capitals
vim.opt.mouse = 'a'               -- Enable mouse mode
vim.opt.number = true             -- Print line number
vim.opt.relativenumber = true     -- Print relative line number
vim.opt.cursorline = true         -- Enable highlighting of the current line
vim.opt.incsearch = true          -- Show the pattern while typing a search command
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.smoothscroll = true

-- Mapleader must be set before lazy.nvim loading
vim.g.mapleader = " "
vim.g.maplocalleader = " "
