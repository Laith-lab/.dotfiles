require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.nvimtree"
require "user.indent"
require "user.telescope"
require "user.cmp"
--require "lsp"
vim.cmd "colorscheme onedark" 
require("startup").setup({theme = "dashboard"})
require("lualine").setup()


