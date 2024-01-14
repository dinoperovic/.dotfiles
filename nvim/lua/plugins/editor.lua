return {
	{
		"nmac427/guess-indent.nvim",
		opts = {},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{
		"christoomey/vim-tmux-navigator",
		keys = {
			{ "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Navigate to left window" },
			{ "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Navigate to down window" },
			{ "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Navigate to up window" },
			{ "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Navigate to right window" },
		},
	},
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			view_options = { show_hidden = true },
		},
		-- stylua: ignore
		keys = {
			{ "-", function() require("oil").open() end, desc = "Open parent directory" },
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			plugins = { spelling = true },
		},
		config = function(_, opts)
			require("which-key").setup(opts)
			require("which-key").register({
				mode = { "n", "v" },
				["g"] = { name = "+goto" },
				["]"] = { name = "+next" },
				["["] = { name = "+prev" },
				["<leader>b"] = { name = "buffer" },
				["<leader>c"] = { name = "code" },
				["<leader>f"] = { name = "file/find" },
				["<leader>g"] = { name = "git" },
				["<leader>gh"] = { name = "hunks" },
				["<leader>q"] = { name = "quit/session" },
				["<leader>s"] = { name = "search" },
				["<leader>u"] = { name = "ui" },
				["<leader>w"] = { name = "windows" },
				["<leader>x"] = { name = "diagnostics/quickfix" },
			})
		end,
	},
}
