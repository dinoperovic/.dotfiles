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
		"nvim-telescope/telescope-ui-select.nvim",
		{
			"aaronhallaert/advanced-git-search.nvim",
			dependencies = {
				"tpope/vim-fugitive",
				"tpope/vim-rhubarb",
				"sindrets/diffview.nvim",
			},
			cmd = { "AdvancedGitSearch" },
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
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
				advanced_git_search = {
					diff_plugin = "diffview",
				},
			},
		})

		-- Enable telescope fzf native, if installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
		pcall(require("telescope").load_extension, "advanced_git_search")

		vim.keymap.set(
			"n",
			"<leader><space>",
			"<cmd>Telescope buffers sort_mru=true only_cwd=true<cr>",
			{ desc = "Switch Buffer" }
		)
		vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
		vim.keymap.set("n", "<D-p>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Find Files (Hidden)" })
		vim.keymap.set(
			"n",
			"<leader>fF",
			"<cmd>Telescope find_files hidden=true no_ignore=true<cr>",
			{ desc = "Find Files (Hidden/Ignored)" }
		)

		vim.keymap.set("n", "<leader>fr", require("telescope.builtin").oldfiles, { desc = "Find recent Files" })
		vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "Find recent Files" })
		vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find Buffers" })
		vim.keymap.set("n", "<leader>fg", require("telescope.builtin").git_files, { desc = "Find Git Files" })

		vim.keymap.set("n", "<leader>ss", require("telescope.builtin").builtin, { desc = "Search Select Telescope" })
		vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "Search Help" })
		vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "Search current Word" })

		vim.keymap.set("n", "<leader>sg", function()
			require("telescope.builtin").live_grep({ additional_args = { "--hidden" } })
		end, { desc = "Search by Grep (Hidden)" })

		vim.keymap.set("n", "<leader>sG", function()
			require("telescope.builtin").live_grep({ additional_args = { "--hidden", "--no-ignore" } })
		end, { desc = "Search by Grep (Hidden/Ignored)" })

		vim.keymap.set("n", "<leader>/", require("telescope.builtin").live_grep, { desc = "Search by Grep" })
		vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "Search Diagnostics" })

		vim.keymap.set("n", "<leader>=", require("telescope.builtin").resume, { desc = "Picker Resume" })

		vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "Git Status" })
		vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_commits, { desc = "Git Commits" })

		-- Git advanced search
		vim.keymap.set(
			"n",
			"<leader>gaS",
			"<cmd>AdvancedGitSearch search_log_content<cr>",
			{ desc = "Search repo log" }
		)
		vim.keymap.set(
			"n",
			"<leader>gas",
			"<cmd>AdvancedGitSearch search_log_content_file<cr>",
			{ desc = "Search file log" }
		)
		vim.keymap.set("n", "<leader>gad", "<cmd>AdvancedGitSearch diff_commit_file<cr>", { desc = "Diff file commit" })
		vim.keymap.set(
			"n",
			"<leader>gaD",
			"<cmd>AdvancedGitSearch diff_branch_file<cr>",
			{ desc = "Diff branch commit" }
		)
	end,
}
