vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Directorio" })
vim.keymap.set("n", "<leader>eh", vim.cmd.noh, { desc = "Exit hightlight" })
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "lsp go to definition" })
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = "lsp go to implementation" })
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "lsp hover" })
vim.keymap.set("n", "<leader>z", function ()
	if vim.wo.wrap == true then
		print("set false")
		vim.wo.wrap = false
	else
		print("set true")
		vim.wo.wrap = true
	end
end, { desc = "Toggle wrap" })
