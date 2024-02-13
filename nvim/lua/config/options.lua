-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Enable mouse mode
vim.opt.mouse = "a"

-- Lines of context
vim.opt.scrolloff = 4

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.opt.completeopt = "menuone,noselect"

-- Set true colors
vim.opt.termguicolors = true

-- Spacing
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Split windows correctly
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Highlight current line
vim.opt.cursorline = true

-- Disable start message
vim.opt.shortmess = "I"
