require("yuyafunabashi.set")
require("yuyafunabashi.keymaps")
require("yuyafunabashi.lazy")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

local has = vim.fn.has
local is_mac = has("macunix")
local is_linux = has("unix")
local is_win = has("win32")
local is_wsl = has("wsl")

if is_mac == 1 then
  require("yuyafunabashi.os.macos")
end
if is_linux == 1 then
  require("yuyafunabashi.os.linux")
end
if is_win == 1 then
  require("yuyafunabashi.os.windows")
end
if is_wsl == 1 then
  require("yuyafunabashi.os.wsl")
end
