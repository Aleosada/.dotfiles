return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			-- The API key for the OpenAI GPT
			api_key_cmd = "pass openai.apikey",
			openai_params = {
				model = "gpt-4",
			},
			openai_edit_params = {
				model = "gpt-4",
			},
		})

		vim.keymap.set("n", "<leader>gg", "<cmd>ChatGPT<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>ge", "<cmd>ChatGPTEditWithInstructions<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>gr", ":ChatGPTRun ", { noremap = true, silent = true })
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
