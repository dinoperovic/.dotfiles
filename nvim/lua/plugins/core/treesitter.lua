return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"vimdoc",
			"vim",
			"bash",
			"fish",
			"toml",

			-- frontend
			"javascript",
			"typescript",
			"jsdoc",
			"tsx",
			"css",
			"scss",
			"html",

			-- go
			"go",
			"gomod",
			"gowork",
			"gosum",
			"templ",

			-- rust
			"ron",
			"rust",
		},
		auto_install = true,
		sync_install = false,
		ignore_install = {},
		modules = {},
		highlight = { enable = true },
		indent = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<c-space>",
				node_incremental = "<c-space>",
				scope_incremental = "<c-s>",
				node_decremental = "<M-space>",
			},
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["aa"] = "@parameter.outer",
					["ia"] = "@parameter.inner",
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
				},
			},
			move = {
				enable = true,
				set_jumps = true,
				goto_next_start = {
					["]m"] = "@function.outer",
					["]]"] = "@class.outer",
				},
				goto_next_end = {
					["]M"] = "@function.outer",
					["]["] = "@class.outer",
				},
				goto_previous_start = {
					["[m"] = "@function.outer",
					["[["] = "@class.outer",
				},
				goto_previous_end = {
					["[M"] = "@function.outer",
					["[]"] = "@class.outer",
				},
			},
			swap = {
				enable = false,
				swap_next = {
					["<leader>a"] = "@parameter.inner",
				},
				swap_previous = {
					["<leader>A"] = "@parameter.inner",
				},
			},
		},
	},
	init = function()
		vim.filetype.add({
			extension = {
				-- go
				templ = "templ",
			},
		})
	end,
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)

		vim.keymap.set("n", "<leader>st", require("telescope.builtin").treesitter, { desc = "Search Treesitter" })
	end,
}
