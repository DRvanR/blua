local Error = {}
local class = { __index = Error }

function Error:new(message, code, previous)
    local instance = {
        _message = message,
        _code = code or 0,
        _previous = previous 
    }
    return setmetatable(instance, class)
end

function Error:message()
    return self._message or ''
end

function Error:code()
    return self._code or 0
end

function Error:previous()
    return self._previous
end

-- __toString implementation?

return Error
