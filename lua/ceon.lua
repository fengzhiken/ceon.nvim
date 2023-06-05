local M = {}

local colors = {
	black = "#1b1b26",
	black1 = "#1c1c37",
	black2 = "#8888aa",
	cyan = "#00f8f8",
	cyan1 = "#00baba",
	cyan2 = "#007c7c",
	cyan3 = "#003e3e",
	white = "#ffffff",
}

local groups = {
	Normal = { bg = colors.black, fg = colors.white },
	EndOfBuffer = { bg = colors.black, fg = colors.white },
	LineNr = { bg = colors.black, fg = colors.black2 },
	StatusLine = { bg = colors.black1, fg = colors.white },
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
