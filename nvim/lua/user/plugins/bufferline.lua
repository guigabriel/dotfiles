return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local status_ok, bufferline = pcall(require, "bufferline")
		if not status_ok then
			return
		end

		bufferline.setup({
			options = {
				themable = true,
				indicator = {
					style = "underline",
				},
				separator_style = { "|", "|" },
				close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
				right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
				offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
			},
		})
	end,
}
