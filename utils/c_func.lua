---@class RENAME_ME.CFunc
---@field thisIsAFunction fun(test: string)

---@type RENAME_ME.CFunc
local c_func = {}

---**`client`**
---Example function
---@param test string
c_func.thisIsAFunction = function(test)
    -- Use your own logging system here if you want.
    print(('[CLIENT] %s'):format(test))
end

return c_func
