local M = {}

local colors = {
	black = "#000000",
	white = "#ffffff",
}

local groups = {
	Normal = { bg = colors.black, fg = colors.white },
	EndOfBuffer = { bg = colors.black, fg = colors.white },
}

M.load = function()
	if vim.g.colors_name then
		vim.cmd("highlight clear")
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "ceon"
	vim.o.termguicolors = true

	for group, options in pairs(groups) do
		vim.api.nvim_set_hl(0, group, options)
	end
end

return M
