-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = vim.keymap.set

-- Navigation
map("i", "<C-e>", "<C-o>A", { desc = "Go to end of line" })
map("i", "<C-a>", "<C-o>I", { desc = "Go to begining of line" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
map("n", "<M-a>", "ggVG", { desc = "Select all" })

-- Pasting
map("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Buffers
map("n", "X", function()
	require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

map("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", { desc = "Delete buffers to the right" })
map("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", { desc = "Delete buffers to the left" })

-- Find files using Ctrl-p
map("n", "<C-p>", Util.telescope("files", { cwd = false }), { desc = "Find Files (cwd)" })
map("n", "<leader>F", Util.telescope("files", { cwd = false }), { desc = "Find Files (cwd)" })

-- Show line diagnostic in a floating window
map("n", "gl", function()
	local float = vim.diagnostic.config().float
	if float then
		local config = type(float) == "table" and float or {}
		config.scope = "line"
		vim.diagnostic.open_float(config)
	end
end, { desc = "Show line diagnostics" })
