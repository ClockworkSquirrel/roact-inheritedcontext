local Roact: Roact = require(script.Parent.Roact)

local withContext = require(script.Parent.withContext)
local mergeDeep = require(script.Parent.mergeDeep)

return function(Context)
    return function(props)
        return withContext(Context, function(outerContext)
            local innerContext = mergeDeep(outerContext, props.value)

            if type(props.transform) == "function" then
                innerContext = props.transform(innerContext)
            end

            return Roact.createElement(Context.Provider, {
                value = innerContext,
            }, props[Roact.Children])
        end)
    end
end
