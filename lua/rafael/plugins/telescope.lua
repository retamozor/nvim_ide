return {
	{
		'nvim-telescope/telescope.nvim', version = '0.1.6',
		dependencies = 'nvim-lua/plenary.nvim',
		config = function()

			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Archivos del proyecto" })
			vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Archivos git del proyecto"})
	--		vim.keymap.set('n', '<leader>ps', function()
	--			builtin.grep_string({ search = vim.fn.input("Grep > ") });
	--		end)
			vim.keymap.set('n', '<leader>ps', builtin.grep_string, { desc = "Buscar palabra" })
			vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = "Busqueda interactiva" })

		end
	}
}
