return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")
		require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		vim.keymap.set(
			"n",
			"<leader>dc",
			":DapContinue<CR>",
			{ noremap = true, silent = true, desc = "[D]ebugger [C]ontinue" }
		)
		vim.keymap.set(
			"n",
			"<leader>db",
			":DapToggleBreakpoint<CR>",
			{ noremap = true, silent = true, desc = "[D]ebugger [B]reakpoint" }
		)
		vim.keymap.set(
			"n",
			"<leader>dn",
			":DapStepOver<CR>",
			{ noremap = true, silent = true, desc = "[D]ebugger [N]ext" }
		)
		vim.keymap.set(
			"n",
			"<leader>di",
			":DapStepInto<CR>",
			{ noremap = true, silent = true, desc = "[D]ebugger [I]nto" }
		)
		vim.keymap.set(
			"n",
			"<leader>do",
			":DapStepOut<CR>",
			{ noremap = true, silent = true, desc = "[D]ebugger [O]ut" }
		)

		-- function()
		--     require("dap").adapters.python = {
		--         type = "executable",
		--         command = "python",
		--         args = { "-m", "debugpy.adapter" },
		--     }
		--     require("dap").configurations.python = {
		--         {
		--             type = "python",
		--             request = "launch",
		--             name = "Launch file",
		--             program = "${file}",
		--             pythonPath = function()
		--                 return vim.fn.exepath("python")
		--             end,
		--         },
		--     }
		-- end
	end,
}
