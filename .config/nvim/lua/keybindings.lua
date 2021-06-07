vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap

map("n", "<leader><Bslash>", ":CHADopen<cr>", {noremap = true})  -- browse directory with chadtree
map("n", "<leader><leader>", ":Telescope find_files<cr>", {noremap = true}) -- find files with fzf
map("n", "<leader>s", ":Telescope live_grep<cr>", {noremap = true}) -- search across files
map("n", "<Tab>", ":", {noremap = true}) -- use tab to enter commands
