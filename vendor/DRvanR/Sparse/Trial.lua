-- define export
local P = {}
Trial = P

-- limit scope
setfenv(1, P)

function _add (a, b)
    return a + b
end

function Trial:add(a, b)
    return _add(a,b)
end

return Trial
