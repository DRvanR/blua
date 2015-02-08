-- define export
local P = {}
Trial = P

-- define imports
local string = string

-- constructor
setmetatable(Trial, {
    __call = function (cls, ...)
        local self = setmetatable({}, cls)
        return self
    end,
})

-- limit scope
setfenv(1, P)

local function _add (a, b)
    return a + b
end

function Trial:add(a, b)
    return _add(a,b)
end

return Trial
