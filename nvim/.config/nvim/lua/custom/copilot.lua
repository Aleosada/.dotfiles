return {
	"github/copilot.vim",
	event = "VeryLazy",
	config = function()
		vim.keymap.del("i", "<Tab>")
		vim.keymap.set("i", "<C-y>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
		vim.api.nvim_set_keymap("i", "<C-M-y>", "<Esc>:Copilot panel<CR>", { noremap = true, silent = true })
		vim.g.copilot_no_tab_map = true
	end,
}
