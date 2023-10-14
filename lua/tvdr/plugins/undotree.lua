return {
	"mbbill/undotree",
	config = function () 
		local keymap = vim.keymap
		keymap.set("n", "<leader>;", vim.cmd.UndotreeToggle)
	end

}
