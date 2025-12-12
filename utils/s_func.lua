---@class RENAME_ME.SFunc
---@field thisIsAFunction fun(test: string)

---@type RENAME_ME.SFunc
local s_func = {}

---**`server`**
---Example function
---@param test string
s_func.thisIsAFunction = function(test)
    print(('[SERVER] %s'):format(test))
end

return s_func
