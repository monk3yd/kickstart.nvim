return {
	'ThePrimeagen/harpoon',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local mark = require('harpoon.mark')
		local ui = require('harpoon.ui')

		-- require('harpoon').setup {}

		vim.keymap.set('n', '<leader>a', mark.add_file, { desc = '[A]dd mark to file' })
		vim.keymap.set('n', '<leader>f', ui.toggle_quick_menu, { desc = 'Toggle harpoon UI' })

		vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end, { desc = 'Harpoon into file 1' })
		vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end, { desc = 'Harpoon into file 2' })
		vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end, { desc = 'Harpoon into file 3' })
		vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end, { desc = 'Harpoon into file 4' })
	end,
}
