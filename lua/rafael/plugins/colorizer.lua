return {
	"norcalli/nvim-colorizer.lua",
	config = function ()
		local co = require("colorizer")
		co.setup()
		vim.keymap.set('n', '<leader>c', co.reload_all_buffers)
	end
}
