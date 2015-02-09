-- imports

-- class definition
local Sparse = { _VERSION = '0.1' }
local class = { __index = Sparse }

-- local function definition
local function _sum(a, b)
    return a + b
end

-- public API
function Sparse:new(constructorArgs)
    local instance = constructorArgs or {}
    return setmetatable(instance, class)
end

function Sparse:parse(someString)
    return someString
end

return Sparse
