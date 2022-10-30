local nnoremap = require("yuyafunabashi.keymap").nnoremap
local vnoremap = require("yuyafunabashi.keymap").vnoremap

nnoremap("<leader>pv", ":Vex<CR>")
nnoremap("<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")
nnoremap("<C-p>", ":GFiles<CR>")
nnoremap("<leader>pf", ":Files<CR>")
nnoremap("<C-k>", ":cnext<CR>")
nnoremap("<C-j>", ":cprevious<CR>")
vnoremap("<leader>p", '"_dP')
vnoremap("<leader>y", '"+y')
nnoremap("<leader>Y", 'gg"+yG')
nnoremap("<leader><Tab><Tab>", ":set invlist<CR>")
nnoremap("<leader>e", ":E<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

