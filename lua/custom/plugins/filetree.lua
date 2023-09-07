return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup()
		vim.keymap.set("n", "<Space>e", ":Neotree.focus", { desc = 'Open File [E]xplorer' })
	end
	-- config = function()
	-- 	-- Unless you are still migrating, remove the deprecated commands from v1.x
	-- 	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	-- 	local neotree = require 'neo-tree'
	-- 	neotree.setup {
	-- 		close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
	-- 	}
	-- 	vim.keymap.set("n", "<Space>e", neotree.focus, { desc = 'Open File [E]xplorer' })
	-- end

}
