-- imports
local Error = require "DRvanR.Sparse.Error"

local fopen = io.open
local gsub = string.gsub
local format = string.format

-- class definition
local Sparse = { _VERSION = '0.1' }
local class = { __index = Sparse }

-- public API
function Sparse:new(rootPath)
    assert(rootPath, 'Root pmust be set in order to use Sparse')
    local instance = {root=rootPath}
    return setmetatable(instance, class)
end

function Sparse:load(filepath)
    local path = self.root .. filepath
    path:gsub(':', '/Resources/View/', 1):gsub(':', '/'):gsub('//', '/')
    local file = fopen(path, "rb")

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
