return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gs = require('gitsigns')
		gs.setup()

		vim.keymap.set('n', '<leader>gh', gs.preview_hunk, { desc = "Ver diferencias" })
		vim.keymap.set('n', '<leader>gn', gs.next_hunk, { desc = "Siguiente diferencia" })
		vim.keymap.set('n', '<leader>gp', gs.prev_hunk, { desc = "Anterior diferencia" })
		vim.keymap.set('n', '<leader>gd', gs.diffthis, { desc = "Comparar diferencias" })
		vim.keymap.set('n', '<leader>gb', gs.toggle_current_line_blame, { desc = "Toggle blame" })
	end
}
