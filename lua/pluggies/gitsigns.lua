return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require('gitsigns').setup{
			current_line_blame = true,
			current_line_blame_opts = {
    				delay = 0,
    				ignore_whitespace = false,
    				virt_text_priority = 100,
    				use_focus = true,
  			},
		}
	end,
}
