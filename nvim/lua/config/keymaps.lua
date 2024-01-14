-- Keymaps for better default experience
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Navigation and selection
vim.keymap.set("i", "<C-e>", "<C-o>A", { desc = "Go to end of line" })
vim.keymap.set("i", "<C-a>", "<C-o>I", { desc = "Go to begining of line" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
vim.keymap.set("n", "<M-h>", "^", { desc = "Go to start of the line" })
vim.keymap.set("n", "<M-l>", "$", { desc = "Go to end of the line" })
vim.keymap.set("n", "<M-a>", "ggVG", { desc = "Select all" })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and re-select" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and re-select" })

-- Buffers
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Buffer Delete" })

-- Diagnostic keymaps
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>xq", vim.diagnostic.setloclist)
