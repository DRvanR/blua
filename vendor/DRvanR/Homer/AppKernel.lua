local AppKernel = {}
local class = { __index=AppKernel }

local pcall = pcall
local unpack = unpack

-- @todo remove with default implementation
local Sparse = require "DRvanR.Sparse.Sparse"
local Templating = Sparse:new('/var/www/drvanr.test/src/')

local function safe_call_func(fn, ...)
    local ok, valueOrError = pcall(fn, unpack(arg))

    if not ok then
        error("D'oh! Error Handling not yet implemented :(")
    end

    return valueOrError
end

function AppKernel:new()
    return setmetatable({}, class)
end

function AppKernel:handle()
    -- for now default implementation
    local content = safe_call_func(Templating:load, 'Blog::index.html')

    ngx.header['X-Are-We-Happy'] = 'why yes, yes we are!';
    ngx.say(content);
end

return AppKernel
