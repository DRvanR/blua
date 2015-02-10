-- imports
local Error = require "DRvanR.Sparse.Error"

local fopen = io.open
local gsub = string.gsub
local format = string.format

-- class definition
local Sparse = { _VERSION = '0.1' }
local class = { __index = Sparse }

-- public API
function Sparse:new(root)
    assert(root, 'Root must be set in order to use Sparse')
    local instance = {_root=root}
    return setmetatable(instance, class)
end

function Sparse:load(filepath)
    local path = self._root .. gsub(filepath, ':', '/')
    local file = open(path, "rb")

    if not file then 
        error(Error:new(format("Template not found: '%s'", path)))
    end

    local content = file:read "*a"
    file:close()

    return content
end

function Sparse:parse(someString)
    return someString
end

return Sparse
