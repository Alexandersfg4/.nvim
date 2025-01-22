return {
	{
		dir = "~/Projects/nvim_plugins/allure-go.nvim/",
		-- "Alexandersfg4/allure-go.nvim",
		opts = {},
		keys = {
			-- Allure keymaps
			{ "<leader>tr", "<cmd>lua require('allure-go').check_and_run_allure()<cr>", desc = "Run allure serve" },
			{ "<leader>ts", "<cmd>lua require('allure-go').stop_allure()<cr>", desc = "Stop allure serve" },
			{
				"<leader>tf",
				"<cmd>lua require('allure-go').run_go_test()<cr>",
				desc = "Run test under cursor",
			},
			{ "<leader>ta", "<cmd>lua require('allure-go').run_go_test_all()<cr>", desc = "Run all tests" },
			{
				"<leader>tp",
				"<cmd>lua require('allure-go').stop_tests()<cr>",
				desc = "Stop currently running test",
			},
			{ "<leader>tc", "<cmd>lua require('allure-go').change_tag()<cr>", desc = "Change tag" },
			{ "<leader>tt", "<cmd>lua require('allure-go').set_test_path()<cr>", desc = "Change test path" },
		},
	},
}
