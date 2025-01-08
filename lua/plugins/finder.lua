return {
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		-- or if using mini.icons/mini.nvim
		-- dependencies = { "echasnovski/mini.icons" },
		opts = {},
		keys = {
			-- Jump to the definition of the word under your cursor.
			--  This is where a variable was first declared, or where a function is defined, etc.
			--  To jump back, press <C-t>.
			{ "<leader>sf", "<cmd>lua require('fzf-lua').files()<cr>", desc = "[S]earch [F]iles" },
			{ "<leader>sw", "<cmd>lua require('fzf-lua').grep_visual()<cr>", desc = "[S]earch [W]words by pattern" },
			{
				"<leader>sc",
				"<cmd>lua require('fzf-lua').grep_visual({ cwd = '~/.config/nvim/' })<cr>",
				desc = "[S]earch [C]onfig by pattern",
			},
			{
				"<leader>sn",
				"<cmd>lua require('fzf-lua').grep_visual({ cwd = '~/notes/' })<cr>",
				desc = "[S]earch [N]otes by pattern",
			},
			{ "gd", "<cmd>lua require('fzf-lua').lsp_definitions()<cr>", desc = "[G]oto [D]efinition" },
			{ "gr", "<cmd>lua require('fzf-lua').lsp_references()<cr>", desc = "[G]oto [R]eferences" },
			{ "gI", "<cmd>lua require('fzf-lua').lsp_implementations()<cr>", desc = "[G]oto [I]mplementation" },
		},
	},
}
