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
		"RRethy/vim-illuminate",
		opts = {},
		config = function(_, opts)
			require("illuminate").configure(opts)
		end,
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
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
		"nvim-pack/nvim-spectre",
		cmd = "Spectre",
		opts = {
			open_cmd = "noswapfile vnew",
			live_update = true,
		},
		-- stylua: ignore
		keys = {
			{ "<leader>rs", function() require("spectre").toggle() end, desc = "Replace Search" },
			{ "<leader>rw", function() require("spectre").open_visual({select_word = true}) end, desc = "Replace Word" },
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		config = function(_, opts)
			local gs = require("gitsigns")
			gs.setup(opts)

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { desc = desc })
			end

			-- stylua: ignore start
			map("n", "]h", gs.next_hunk, "Next Hunk")
			map("n", "[h", gs.prev_hunk, "Prev Hunk")
			map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
			map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
			map("n", "<leader>hS", gs.stage_buffer, "Stage Buffer")
			map("n", "<leader>hu", gs.undo_stage_hunk, "Undo Stage Hunk")
			map("n", "<leader>hR", gs.reset_buffer, "Reset Buffer")
			map("n", "<leader>hp", gs.preview_hunk, "Preview Hunk")
			map("n", "<leader>hb", function() gs.blame_line({ full = true }) end, "Blame Line")
			map("n", "<leader>hd", gs.diffthis, "Diff This")
			map("n", "<leader>hD", function() gs.diffthis("~") end, "Diff This ~")
			map("n", "<leader>tb", gs.toggle_current_line_blame, "Toggle Git current Line Blame")
			map("n", "<leader>td", gs.toggle_deleted, "Toggle Git Deleted")

			-- Text object
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
		end
	},
	{
		"folke/which-key.nvim",
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
				["<leader>f"] = { name = "find" },
				["<leader>g"] = { name = "git" },
				["<leader>h"] = { name = "hunk" },
				["<leader>q"] = { name = "quit/session" },
				["<leader>r"] = { name = "replace" },
				["<leader>s"] = { name = "search" },
				["<leader>t"] = { name = "toggle" },
				["<leader>w"] = { name = "windows" },
				["<leader>x"] = { name = "diagnostics/quickfix" },
			})
		end,
	},
}
