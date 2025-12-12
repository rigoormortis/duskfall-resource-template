---@type RENAME_ME.Config
local config = require 'config'

---@type RENAME_ME.SFunc
local s_func = require 'utils.s_func'

---@type RENAME_ME.Example
local example = require 'modules.example.config'

if example.enable then
    -- Example usage for server utilities:
    s_func.thisIsAFunction('Server side example is enabled.')
end
