return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-neotest/neotest-python",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-python"),
			},
		})

		vim.keymap.set("n", "<leader>tt", "<cmd>lua require('neotest').run.run()<CR>", { desc = "[T]est nearest" })
		vim.keymap.set(
			"n",
			"<leader>tf",
			"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
			{ desc = "[T]est [F]ile" }
		)
		vim.keymap.set(
			"n",
			"<leader>to",
			"<cmd>lua require('neotest').output.open({ enter = true, auto_close = true })<CR>",
			{ desc = "[T]est [O]output" }
		)
		vim.keymap.set(
			"n",
			"<leader>tp",
			"<cmd>lua require('neotest').output_panel.toggle()<CR>",
			{ desc = "[T]est [P]anel" }
		)
		vim.keymap.set(
			"n",
			"<leader>ts",
			"<cmd>lua require('neotest').summary.toggle()<CR>",
			{ desc = "[T]est [P]anel" }
		)
	end,
}
