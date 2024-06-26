vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Directorio" })
vim.keymap.set("n", "<leader>eh", vim.cmd.noh, { desc = "Exit hightlight" })
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "lsp go to definition" })
vim.keymap.set("n", "<leader>tt", function ()
	vim.api.nvim_exec('split', false)
	vim.api.nvim_exec('wincm w', false)
	vim.api.nvim_exec('terminal pwsh', false)
end)
vim.keymap.set("n", "<leader>z", function ()
	if vim.wo.wrap == true then
		print("set false")
		vim.wo.wrap = false
	else
		print("set true")
		vim.wo.wrap = true
	end
end, { desc = "Toggle wrap" })
