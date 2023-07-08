local M = {}
local Mac = {}

local squirrelIM = "im.rime.inputmethod.Squirrel.Hans"
local defaultIM = "com.apple.keylayout.ABC"

Mac.zh_cn = squirrelIM
Mac.en = defaultIM

local getChangeIM = function() return Mac.en end

M.macFocusGained = function() vim.cmd(":silent :!im-select" .. " " .. getChangeIM()) end

M.macFocusLost = function() vim.cmd(":silent :!im-select" .. " " .. Mac.en) end

M.macInsertLeave = function() vim.cmd(":silent :!im-select" .. " " .. Mac.en) end

M.macInsertEnter = function() vim.cmd(":silent :!im-select" .. " " .. Mac.en) end

return M
