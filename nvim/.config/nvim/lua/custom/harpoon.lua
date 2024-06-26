return {
	"theprimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({
			settings = {
				save_on_toggle = true,
			},
		})

		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		vim.keymap.set("n", "<leader>hh", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "[H]arpoon Toggle Quick Menu" })

		vim.keymap.set("n", "<leader>ho", function()
			toggle_telescope(harpoon:list())
		end, { desc = "[H]arpoon [O]ppen" })

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():append()
		end, { desc = "[H]arpoon [A]ppend" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>hp", function()
			harpoon:list():prev()
		end, { desc = "[H]arpoon [P]revious" })

		vim.keymap.set("n", "<leader>hn", function()
			harpoon:list():next()
		end, { desc = "[H]arpoon [N]ext" })
	end,
}
