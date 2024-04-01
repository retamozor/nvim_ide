return {
	{
		'navarasu/onedark.nvim',
		name = 'onedark',
		config = function()
			local scheme = require('onedark')
			scheme.setup {
				transparent = true,
				ending_tildes = false,
			}
			scheme.load()
		end
	}
}
