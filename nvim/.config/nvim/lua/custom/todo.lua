-- Highlight todo, notes, etc in comments
return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = false },
	config = {
		vim.keymap.set(
			"n",
			"<leader>st",
			"<cmd>TodoTelescope<CR>",
			{ noremap = true, silent = true, desc = "[S]earch [T]odo" }
		),
	},
}
