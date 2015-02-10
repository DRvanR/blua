local AppKernel = {}
local class = { __index=AppKernel }

local pcall = pcall
local unpack = unpack

-- @todo remove with default implementation
local Sparse = require "DRvanR.Sparse.Sparse"
local Templating = Sparse:new('/var/www/drvanr.test/src/')

local function safe_call_func(fn, ...)
    local arguments = arg or {}
    local ok, valueOrError = pcall(fn, unpack(arguments))

    if not ok then
        error("D'oh! Error Handling not yet implemented :( " .. valueOrError)
    end

    return valueOrError
end

function AppKernel:new()
    return setmetatable({}, class)
end

function AppKernel:handle()
    -- for now default implementation
    local content = safe_call_func(function ()
        return Templating:load('Blog::index.html')
    end)

    ngx.header['X-Are-We-Happy'] = 'why yes, yes we are!';
    ngx.say(content);
end

return AppKernel
