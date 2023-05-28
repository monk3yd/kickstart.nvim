-- Shorten function name
local keymap = vim.keymap.set

return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		local nvim_tmux_nav = require 'nvim-tmux-navigation'

		nvim_tmux_nav.setup {}

		keymap('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, { silent = true, desc = 'Navigate left' })
		keymap('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, { silent = true, desc = 'Navigate down' })
		keymap('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, { silent = true, desc = 'Navigate up' })
		keymap('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, { silent = true, desc = 'Navigate right' })
		keymap('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext, { silent = true, desc = 'Navigate next' })
	end,
}
