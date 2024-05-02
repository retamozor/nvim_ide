require("rafael.remap")
require("rafael.lazy")

local set = vim.opt
local tab_width = 2
set.tabstop = tab_width
set.softtabstop = tab_width
set.shiftwidth = tab_width
set.number = true
set.relativenumber = false
set.scrolloff = 8

-- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = '#3bb9c4' })
-- vim.api.nvim_set_hl(0, 'FloatTitle', { fg = '#dfdfdf' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'TelescopeTitle', { bg = 'none' })
