return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-x>"] = require("telescope.actions").delete_buffer,
					},
				},
			},
		})

		-- Enable telescope fzf native, if installed
		pcall(require("telescope").load_extension, "fzf")

		-- stylua: ignore start
		vim.keymap.set("n", "<leader><space>", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", { desc = "Switch Buffer" })
		vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Find Files (Hidden)" })
		vim.keymap.set("n", "<leader>fr", require("telescope.builtin").oldfiles, { desc = "Find recent Files" })
		vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "Find recent Files" })
		vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find Buffers" })
		vim.keymap.set("n", "<leader>fg", require("telescope.builtin").git_files, { desc = "Find Git Files" })

		vim.keymap.set("n", "<leader>ss", require("telescope.builtin").builtin, { desc = "Search Select Telescope" })
		vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "Search Help" })
		vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "Search current Word" })
		vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "Search by Grep" })
		vim.keymap.set("n", "<leader>/", require("telescope.builtin").live_grep, { desc = "Search by Grep" })
		vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "Search Diagnostics" })

		vim.keymap.set("n", "<leader>=", require("telescope.builtin").resume, { desc = "Picker Resume" })

		vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "Git Status" })
		vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_commits, { desc = "Git Commits" })
	end,
}
