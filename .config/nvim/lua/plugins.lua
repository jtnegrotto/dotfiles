return require("packer").startup(function()
	-- Manage packer with packer
	use "wbthomason/packer.nvim"

	use "nvim-lua/plenary.nvim"
	use "nvim-lua/popup.nvim"

	-- Statusline
	use {
		"hoob3rt/lualine.nvim",
		requires = {"kyazdani42/nvim-web-devicons"},
	}

	-- Flattened solarized
	use "romainl/flattened"

	-- File browser
	use {"ms-jpq/chadtree", run = ":CHADdeps"}

	-- Helpers for quickly writing HTML and CSS
	use "mattn/emmet-vim"

	use {
	        "nvim-telescope/telescope.nvim",
		requires = {
			{"nvim-treesitter/nvim-treesitter"},
			{"kyazdani42/nvim-web-devicons"},
		}
	}


	-- Prose / Notes
	use "vim-pandoc/vim-pandoc"
	use "vim-pandoc/vim-pandoc-syntax"
	use {"npxbr/glow.nvim", run = ":GlowInstall"}

	-- Git
	use "tpope/vim-fugitive"

	-- Project configuration
	use "tpope/vim-projectionist"

	-- Alternatives to UNIX shell commands
	use "tpope/vim-eunuch"

	-- Test runner
	use "vim-test/vim-test"

	-- Ruby and Rails
	use "tpope/vim-bundler"
	use "tpope/vim-rake"
	use "tpope/vim-rails"

	-- Easily reload Neovim configuration
	use "famiu/nvim-reload"
end)

