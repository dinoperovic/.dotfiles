-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Buffers
map("n", "X", function()
	require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })
map("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", { desc = "Delete buffers to the right" })
map("n", "<leader>bj", "<cmd>BufferLineCloseLeft<CR>", { desc = "Delete buffers to the left" })
