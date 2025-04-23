-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.opt

-- Use real tabs, not spaces
o.expandtab = false -- <Tab> inserts a tabchar, not spaces
o.shiftwidth = 4 -- width for auto-indent and >> <<
o.tabstop = 4 -- a literal Tab is displayed as 4 spaces wide
o.softtabstop = 4 -- <BS> in insert removes a real tab as 4 spaces
