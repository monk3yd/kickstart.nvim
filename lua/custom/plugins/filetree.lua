-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

		require("neo-tree").setup({
			close_if_last_window = false,
			hide_root_node = true,
			retain_hidden_root_indent = true,
			filesystem = {
				use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes instead of relying on nvim autocmd events.
			}
		})
		vim.keymap.set("n", "<Space>e", ":Neotree toggle<CR>", { desc = 'Open File [E]xplorer' })
		-- vim.keymap.set("n", "<Space>e", ":Neotree focus<CR>", { desc = 'Open File [E]xplorer' })
	end
	-- config = function()
	-- 	-- Unless you are still migrating, remove the deprecated commands from v1.x
	-- 	local neotree = require 'neo-tree'
	-- 	neotree.setup {
	-- 		close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
	-- 	}
	-- 	vim.keymap.set("n", "<Space>e", neotree.focus, { desc = 'Open File [E]xplorer' })
	-- end

}
