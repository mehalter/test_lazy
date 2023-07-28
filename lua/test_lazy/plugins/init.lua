return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ -- TEST DEPENDENCY NOT BEING CONSIDERED
				"lewis6991/gitsigns.nvim",
				opts = function(_, opts)
					opts.DEPENDENCY_IS_CONSIDERED = true
					opts.test_func = function()
						require("telescope")
					end
				end,
			},
		},
		opts = {},
	},
}
