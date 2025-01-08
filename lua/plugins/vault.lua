return {
	{
		dir = "~/Projects/nvim_plugins/vault.nvim",
		keys = {
			-- Allure keymaps
			{ "<leader>tv", "<cmd>lua require('vault').set_vault_token()<cr>", desc = "Set vault token" },
		},
	},
}
