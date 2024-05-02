return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		win_config = { border = "double" }
	},
	config = function()
		local trb = require("trouble")
		vim.keymap.set("n", "<leader>tx", function() trb.toggle() end, { desc = "Toggle trouble" })
		vim.keymap.set("n", "<leader>tw", function() trb.toggle("workspace_diagnostics") end, { desc = "Toggle workspace diagnostics" })
		vim.keymap.set("n", "<leader>td", function() trb.toggle("document_diagnostics") end, { desc = "Toggle document diagnostics" })
		vim.keymap.set("n", "<leader>tq", function() trb.toggle("quickfix") end, { desc = "Toggle quickfix" })
		vim.keymap.set("n", "<leader>tl", function() trb.toggle("loclist") end, { desc = "Toggle loclist" })
		vim.keymap.set("n", "gR", function() trb.toggle("lsp_references") end, { desc = "lsp references" })
	end
}
