local cmd = vim.cmd
local execute = vim.api.nvim_command
local fn = vim.fn

-- automatically install packer.nvim if needed
local relative_path = "/site/pack/packer/opt/packer.nvim"
local install_path = fn.stdpath("data") .. relative_path
if fn.empty(fn.glob(install_path)) > 0 then
	local repo = "https://github.com/wbthomason/packer.nvim"
	fn.system({"git", "clone", repo, install_path})
	execute "packadd packer.nvim"
end
-- automatically recompile when plugins.lua changes
cmd "autocmd BufWritePost plugins.lua PackerCompile"

-- set global compiler to gcc
cmd "compiler! gcc"

require("plugins")
require("settings")
require("keybindings")
require("theme")

-- change cwd to current directory
cmd "cd %:p:h"

