return {
	-- Gruvbox Material Theme
	'sainnhe/gruvbox-material',
	lazy = false,
	priority = 1000,
	init = function()
		vim.g.gruvbox_material_better_performance = 1
		vim.g.gruvbox_material_transparent_background = 2
		vim.g.gruvbox_material_diagnostic_text_highlight = 1
		vim.g.gruvbox_material_current_word = "bold"
	end,
	config = function()
		vim.cmd.colorscheme 'gruvbox-material'
	end,
}
