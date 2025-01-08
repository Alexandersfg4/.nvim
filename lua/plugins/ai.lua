return {
	-- GPT API GATEWAY
	{
		'olimorris/codecompanion.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'stevearc/dressing.nvim', opts = {} }, -- Optional: Improves `vim.ui.select`
		},
		config = true,
		opts = {
			strategies = {
				chat = {
					adapter = 'gateway',
				},
				inline = {
					adapter = 'gateway',
				},
			},
			adapters = {
				-- adaper for Qwen2.5.1-Coder-7B-Instruct-Q5_K_M
				coder = function()
					return require('codecompanion.adapters').extend('openai_compatible', {
						env = {
							url = 'http://localhost:8080',
						},
					})
				end,
				-- adapter for openAI gateway
				gateway = function()
					return require('codecompanion.adapters').extend('openai_compatible', {
						env = {
							url = 'GPT_GATEWAY_URL',
							api_key = 'GPT_GATEWAY_TOKEN',
							chat_url = '/v1/chat/completions',
						},
					})
				end,
			},
		},
	}
}
