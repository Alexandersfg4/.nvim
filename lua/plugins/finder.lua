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
			{ "<leader>su", "<cmd>lua require('fzf-lua').grep_cword()<cr>", desc = "[S]earch word [U]nder cursor" },
			{ "<leader>sg", "<cmd>lua require('fzf-lua').live_grep_native()<cr>", desc = "[S]earch by re[g]exp" },
			{
				"<leader>sw",
				"<cmd>lua require('fzf-lua').diagnostics_workspace()<cr>",
				desc = "[S]earch [W]orkspace diagnostics",
			},
			{
				"<leader>sd",
				"<cmd>lua require('fzf-lua').lsp_document_diagnostics()<cr>",
				desc = "[S]earch [D]ocument diagnostics",
			},
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
			{ "gr", "<cmd>lua require('fzf-lua').lsp_references()<cr>", desc = "[G]oto [R]eferences" },
			{ "gI", "<cmd>lua require('fzf-lua').lsp_implementations()<cr>", desc = "[G]oto [I]mplementation" },
		},
	},
}
