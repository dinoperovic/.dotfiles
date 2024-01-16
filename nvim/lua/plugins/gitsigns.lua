return 	{
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
	end,
}

