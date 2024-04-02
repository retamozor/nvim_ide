return {
	"lewis6991/gitsigns.nvim",
	config = function ()
		local gs = require('gitsigns')
		gs.setup()

		vim.keymap.set('n', '<leader>gh', gs.preview_hunk)
		vim.keymap.set('n', '<leader>gn', gs.next_hunk)
		vim.keymap.set('n', '<leader>gp', gs.prev_hunk)
	end
}
