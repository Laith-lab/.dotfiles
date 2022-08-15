return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	function get_setup(name)
		return string.format('require("setup/%s")', name)
	end

	--colorscheme
	use{ 
		'RRethy/nvim-base16',
		
		config = get_setup("base16")
	}

	--fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = get_setup("telescope")

	}


	use {
		'kyazdani42/nvim-tree.lua', --NERDTree for neovim
		requires = {'kyazdani42/nvim-web-devicons'},
		config = get_setup("nvimtree")
	}


	use {
		"lukas-reineke/indent-blankline.nvim", -- Cool indents
		config = get_setup("indent")

	}

	use "nvim-treesitter/nvim-treesitter" --Treesitter, I have no idea what this is

	
	use { 
		"preservim/nerdcommenter", --Comment multiple lines at once
		config = get_setup("nerdcommenter")
	}

	use "andweeb/presence.nvim"


	use {
		'nvim-lualine/lualine.nvim', --Lua line
		requires = { 'kyazdani42/nvim-web-devicons', opt = true } --Icons
	}

	use {
		'romgrk/barbar.nvim', -- Tabs
		requires = {'kyazdani42/nvim-web-devicons'} -- Icons, for the third time
	}

	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
		config = function()
			require"startup".setup()
		end
	}


	use { 
		'TimUntersberger/neogit', 
		requires = {'nvim-lua/plenary.nvim'}, 
		config = get_setup("neogit")
	}


	use { 
		"ycm-core/YouCompleteMe"
	}

	use { 
		"dcampos/nvim-snippy",
		requires = 'honza/vim-snippets',
		config = get_setup("snippets")
	}


	
end)

