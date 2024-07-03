-- aaw-variables.lua -- options for Neovim

local global = vim.g
local opt = vim.o

opt.number = true
opt.swapfile = false
opt.shiftwidth = 4
opt.laststatus = 2
opt.termguicolors = true
opt.autoindent = true
opt.encoding = "utf-8"
opt.clipboard = "unnamedplus"

-- Dont' pass messages to |ins-completin menu|

opt.shortmess = vim.o.shortmess .. "I"
global.timeoutlen = 0

-- aaw-variables.lua ends here
