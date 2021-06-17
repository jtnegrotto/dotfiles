require("_opts")

local apply_options = function(opts)
	for k, v in pairs(opts) do
		vim.opt[k] = v
	end
end

apply_options({
	guifont = [[Iosevka\ Nerd\ Font:h16]], -- set font for GUI to Iosevka
	expandtab = false,                     -- use tabs for indentation
	tabstop = 8,                           -- tab size
	shiftwidth = 8,                        -- indentation width
	number = true,                         -- setting 'number' and 'relativenumber' at the same time...
	relativenumber = true,                 -- ...enables hybrid line numbers
	termguicolors = true,                  -- enable 24-bit rgb colors
	colorcolumn = "80,100,120",            -- Highlight particular column numbers
	foldenable = false,                    -- Disable automatic code folding
})

