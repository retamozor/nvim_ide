return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function ()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.prettierd,
				},
			})
			vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = "Format" })
		end
	}
}
