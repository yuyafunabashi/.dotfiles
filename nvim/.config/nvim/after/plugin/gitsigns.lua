local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

gitsigns.setup({
	current_line_blame = true,
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol",
		delay = 500,
	},
	current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
})
