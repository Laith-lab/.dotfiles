local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>a", ":NvimTreeToggle<CR>", {noremap = true})
require("nvim-tree").setup()



