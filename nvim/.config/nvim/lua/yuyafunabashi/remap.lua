local nnoremap = require("yuyafunabashi.keymap").nnoremap
local vnoremap = require("yuyafunabashi.keymap").vnoremap

nnoremap("<leader>pv", "<Cmd>Vex<CR>")
nnoremap("<leader><CR>", "<Cmd>so ~/.config/nvim/init.lua<CR>")
nnoremap("<C-p>", "<Cmd>GFiles<CR>")
nnoremap("<leader>pf", "<Cmd>Files<CR>")
nnoremap("<C-k>", "<Cmd>cnext<CR>")
nnoremap("<C-j>", "<Cmd>cprevious<CR>")
vnoremap("<leader>p", "\"_dP")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "gg\"+yG")
nnoremap("<leader><Tab><Tab>", "<Cmd>set invlist<CR>")
nnoremap("<leader>e", "<Cmd>E<CR>")

vnoremap("J", "<Cmd>m '>+1<CR>gv=gv")
vnoremap("K", "<Cmd>m '<-2<CR>gv=gv")

