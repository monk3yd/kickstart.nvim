return {
	'kevinhwang91/nvim-ufo',
	dependencies = { 'kevinhwang91/promise-async',
		{
			"luukvbaal/statuscol.nvim",
			config = function()
				local builtin = require("statuscol.builtin")
				require("statuscol").setup(
					{
						relculright = true,
						segments = {
							{ text = { builtin.foldfunc },      click = "v:lua.ScFa" },
							{ text = { "%s" },                  click = "v:lua.ScSa" },
							{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" }
						}
					}
				)
			end

		}
	},
	config = function()
		local keymap = vim.keymap.set
		local ufo = require 'ufo'
		ufo.setup {
			open_fold_hl_timeout = 150,
			close_fold_kinds = { 'imports', 'comment' },
			preview = {
				win_config = {
					border = { '', '─', '', '', '', '─', '', '' },
					winhighlight = 'Normal:Folded',
					winblend = 0
				},
				mappings = {
					scrollU = '<C-u>',
					scrollD = '<C-d>'
				}
			},
			provider_selector = function(bufnr, filetype, buftype)
				return { 'treesitter', 'indent' }
			end
		}

		keymap('n', 'zR', ufo.openAllFolds)
		keymap('n', 'zM', ufo.closeAllFolds)
		keymap('n', 'zm', ufo.closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
		keymap('n', 'zr', ufo.openFoldsExceptKinds)
	end,
}
