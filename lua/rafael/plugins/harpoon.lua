return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = "Harpoon: Agregar archivo"})
		vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: toogle"})

		vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: seleccionar 1"})
		vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: seleccionar 2"})
		vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: seleccionar 3"})
		vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: seleccionar 4"})

		vim.keymap.set("n", "<leader>r1", function() harpoon:list():removeAt(1) end, { desc = "Harpoon: eliminar 1"})
		vim.keymap.set("n", "<leader>r2", function() harpoon:list():removeAt(2) end, { desc = "Harpoon: eliminar 2"})
		vim.keymap.set("n", "<leader>r3", function() harpoon:list():removeAt(3) end, { desc = "Harpoon: eliminar 3"})
		vim.keymap.set("n", "<leader>r4", function() harpoon:list():removeAt(4) end, { desc = "Harpoon: eliminar 4"})

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon: anterior"})
		vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon: siguiente"})
	end
}
