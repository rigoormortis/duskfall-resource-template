---@type RENAME_ME.Config
local config = require 'config'

---@type RENAME_ME.CFunc
local c_func = require 'utils.c_func'

---@type RENAME_ME.Example
local example = require 'modules.example.config'

-- If this module is enabled, run its client logic.
if example.enable then
    -- Replace 'Test' with a locale call or dynamic string if you use a locale system.
    c_func.thisIsAFunction('Test')
end
